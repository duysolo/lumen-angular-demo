(function () {
    'use strict';
    angular.module('app', []);
    angular
        .module('adminApp', ['ngRoute', 'ngCookies', 'ngResource', 'app', 'ngMessages', 'ui.bootstrap'])
        .config(config)
        .run(run);

    config.$inject = ['$routeProvider', '$locationProvider'];
    function config($routeProvider, $locationProvider) {
        $routeProvider
            .when('/login', {
                controller: 'LoginController',
                templateUrl: baseUrlView + 'auth/login.html',
                controllerAs: 'vm'
            })
            .when('/', {
                controller: 'DashboardController',
                templateUrl: baseUrlView + 'dashboard/index.html',
                controllerAs: 'vm'
            })
            .when('/pages', {
                controller: 'PagesController',
                templateUrl: baseUrlView + 'pages/index.html',
                controllerAs: 'vm'
            })
            .when('/pages/:pageId', {
                controller: 'PagesController',
                templateUrl: baseUrlView + 'pages/details.html',
                controllerAs: 'vm'
            })
            .when('/settings', {
                controller: 'SettingsController',
                templateUrl: baseUrlView + 'settings/index.html',
                controllerAs: 'vm'
            })
            .otherwise({ redirectTo: '/' });
    }

    run.$inject = ['$rootScope', '$location', '$cookieStore', '$http', 'SettingsFactory'];
    function run($rootScope, $location, $cookieStore, $http, SettingsFactory) {
        // keep user logged in after page refresh
        $rootScope.globals = $cookieStore.get('globals') || {};
        if ($rootScope.globals.currentUser) {
            $http.defaults.headers.common['Authorization'] = 'Basic ' + $rootScope.globals.currentUser.authdata;
        }

        $rootScope.$on('$locationChangeStart', function (event, next, current) {
            var restrictedPage = $.inArray($location.path(), ['/login', '/register']) === -1;
            var loggedIn = $rootScope.globals.currentUser;
            if (restrictedPage && !loggedIn)
            {
                $location.path('/login');
            }
        });

        $rootScope.$on('$routeChangeSuccess', function () {
            Utility.initAdmin();
        });

        SettingsFactory.defineSettings();

        /*Show - Hide loading state*/
        $rootScope.toggleLoadingState = function()
        {
            $rootScope.settings.layout.loading = !$rootScope.settings.layout.loading;
        };
        $rootScope.showLoadingState = function()
        {
            $rootScope.settings.layout.loading = true;
        };
        $rootScope.hideLoadingState = function()
        {
            $rootScope.settings.layout.loading = false;
        };

        /*Global vars*/
        $rootScope.baseApi = baseApi;
        $rootScope.baseGlobalApi = baseGlobalApi;
        $rootScope.baseUrl = baseUrl;
        $rootScope.baseUrlView = baseUrl + 'views/admin/';
        $rootScope.baseUrlDirectiveTemplates = baseUrl + 'templates/directives/';
    }
})();