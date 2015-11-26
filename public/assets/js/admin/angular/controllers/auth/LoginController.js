(function () {
    'use strict';

    angular
        .module('app')
        .controller('LoginController', LoginController);

    LoginController.$inject = ['$rootScope', '$location', 'AuthenticationService'];
    function LoginController($rootScope, $location, AuthenticationService) {
        var vm = this;

        vm.login = login;

        (function initController() {
            // reset login status
            AuthenticationService.ClearCredentials();
            $rootScope.bodyClass = 'page page-login';
        })();

        function login() {
            $rootScope.showLoadingState();
            AuthenticationService.Login(vm.username, vm.password, function (response){
                AuthenticationService.SetCredentials(vm.username, vm.password);
                $location.path('/');
            }, function(response){
                $rootScope.hideLoadingState();
                vm.error = response.error;
                vm.errorMessage = response.message;
            });
        }
    }
})();