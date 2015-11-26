var path = {
    base: './assets/',
    distPath: './assets/dist/',
    distPathAdmin: './assets/dist/admin/',
    commonPath: './assets/js/third_party/',
    bower: './bower_components/',
    npm: './node_modules/',
    core: './assets/core/',
    coreThirdParty: './assets/core/third_party/'
};

var gulp = require("gulp");
var sass = require("gulp-sass");
var sourcemaps = require('gulp-sourcemaps');
var autoprefixer = require("gulp-autoprefixer");
var uglify = require("gulp-uglify");
var concat = require('gulp-concat');
var rename = require('gulp-rename');
var plumber = require('gulp-plumber');
var notify  = require('gulp-notify');

/*Min sass*/
gulp.task("sass", function(){
    gulp.src(path.base + 'scss/front/**/*.scss')
        .pipe(plumber({
            errorHandler: notify.onError("Error Sass: <%= error.message %>")
        }))
        .pipe(sass({outputStyle: 'compressed'}))
        .pipe(autoprefixer({
            browsers: ['> 1%', 'last 2 versions']
        }))
        //.pipe(concat('app.min.css'))
        .pipe(sourcemaps.init())
        .pipe(sourcemaps.write('./map'))
        .pipe(gulp.dest(path.base + 'css/'));

    /*Concat css*/
    gulp.src(path.base + 'css/style.css')
        .pipe(concat('app.min.css'))
        .pipe(gulp.dest(path.distPath));
});

/*Min script*/
gulp.task('scripts', function() {
    gulp.src([
            path.coreThirdParty + 'jquery.min.js',
            path.coreThirdParty + 'jquery.placeholder.js',
            path.coreThirdParty + 'modernizr.js',
            path.coreThirdParty + 'bootstrap-sass/assets/javascripts/bootstrap.min.js'
        ])
        .pipe(concat('core.min.js'))
        .pipe(uglify())
        .pipe(gulp.dest(path.distPath));

    gulp.src([
            path.base + 'js/*.js'
        ])
        .pipe(concat('app.min.js'))
        .pipe(uglify())
        .pipe(gulp.dest(path.distPath));

    gulp.src([
            path.bower + 'angular/angular.js',
            path.bower + 'angular-mocks/angular-mocks.js',
            path.bower + 'angular-route/angular-route.js',
            path.bower + 'angular-resource/angular-resource.js',
            path.bower + 'angular-animate/angular-animate.js',
            path.bower + 'angular-cookies/angular-cookies.js',
            path.bower + 'angular-bootstrap/ui-bootstrap-tpls.js',
            path.base + 'js/front/**/*.js'
        ])
        .pipe(concat('angular-app.min.js'))
        .pipe(uglify())
        .pipe(gulp.dest(path.distPath));
});


/*Default task*/
gulp.task("default", ['sass', 'scripts'], function(){});

/*Watch*/
gulp.task("watch", function(){
    gulp.watch(path.base + 'scss/**/*.scss', ['sass']);
    gulp.watch(path.base + 'js/**/*.js', ['scripts']);
});

/*----------------------------------------------------------------------------------*/

/*
 ======================================================================================
 ## Start Gulp tasks for admin
 ======================================================================================
 */
gulp.task('copyfonts', function() {
    gulp.src([
            path.bower + 'bootstrap-sass/assets/fonts/**/*.{ttf,woff,woff2,eof,svg,otf}',
            path.bower + 'font-awesome-sass/assets/fonts/**/*.{ttf,woff,woff2,eof,svg,otf}'
        ])
        .pipe(gulp.dest(path.base + 'fonts/'));
});

gulp.task('copySassAdmin', function(){
    /*Copy style from sb admin 2*/
    gulp.src([
            path.bower + 'startbootstrap-sb-admin-2/dist/css/timeline.css',
            path.bower + 'metisMenu/dist/metisMenu.min.css',
            path.bower + 'startbootstrap-sb-admin-2/dist/css/sb-admin-2.css'
        ])
        .pipe(rename(function (path) {
            path.extname = ".scss";
            path.basename = '_' + path.basename;
            path.dirname = '_copy';
        }))
        .pipe(gulp.dest(path.base + 'scss/admin/'));
});

gulp.task("sassAdmin", function(){
    gulp.src(path.base + 'scss/admin/**/*.scss')
        .pipe(plumber({
            errorHandler: notify.onError("Error Sass: <%= error.message %>")
        }))
        .pipe(sourcemaps.init())
        .pipe(sass({outputStyle: 'compressed'}))
        .pipe(autoprefixer({
            browsers: ['> 1%', 'last 2 versions']
        }))
        .pipe(sourcemaps.write('./map'))
        .pipe(gulp.dest(path.base + 'css/admin/'));

    /*Concat css*/
    gulp.src(path.base + 'css/admin/style.css')
        .pipe(concat('app-admin.min.css'))
        .pipe(gulp.dest(path.distPathAdmin));
});

gulp.task('coreJsAdmin', function(){
    gulp.src([
            path.coreThirdParty + 'jquery.min.js',
            path.coreThirdParty + 'jquery.placeholder.js',
            path.coreThirdParty + 'modernizr.js',
            path.bower + 'bootstrap-sass/assets/javascripts/bootstrap.min.js',
            path.bower + 'metisMenu/dist/metisMenu.min.js'
        ])
        .pipe(concat('core.min.js'))
        .pipe(uglify())
        .pipe(gulp.dest(path.distPath));
});

gulp.task('coreAngular', function(){
    gulp.src([
            path.bower + 'angular/angular.js',
            path.bower + 'angular-mocks/angular-mocks.js',
            path.bower + 'angular-route/angular-route.js',
            path.bower + 'angular-resource/angular-resource.js',
            path.bower + 'angular-animate/angular-animate.js',
            path.bower + 'angular-cookies/angular-cookies.js',
            path.bower + 'angular-messages/angular-messages.js',
            path.bower + 'angular-bootstrap/ui-bootstrap-tpls.js'
        ])
        .pipe(concat('angular-core.min.js'))
        .pipe(uglify())
        .pipe(gulp.dest(path.distPath));
});

gulp.task('scriptsAdmin', function() {
    gulp.src([
            path.base + 'js/*.js'
        ])
        .pipe(concat('app.min.js'))
        .pipe(uglify())
        .pipe(gulp.dest(path.distPath));

    gulp.src([
            path.base + 'js/admin/**/*.js'
        ])
        .pipe(concat('angular-app.min.js'))
        .pipe(uglify())
        .pipe(gulp.dest(path.distPathAdmin));
});

/*Admin task*/
gulp.task("admin", ['sassAdmin', 'scriptsAdmin', 'copyfonts'], function(){});

gulp.task("watchAdmin", function(){
    gulp.watch(path.base + 'scss/admin/**/*.scss', ['sassAdmin']);
    gulp.watch(path.base + 'js/**/*.js', ['scriptsAdmin']);
});