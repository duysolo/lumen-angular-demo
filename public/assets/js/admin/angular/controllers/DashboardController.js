(function () {
    'use strict';

    angular
        .module('adminApp')
        .controller('DashboardController', DashboardController);

    DashboardController.$inject = ['$rootScope'];
    function DashboardController($rootScope) {
        var vm = this;

        vm.dashboard = dashboard;

        (function initController() {
            dashboard();
        })();

        function dashboard()
        {
            $rootScope.bodyClass = 'page page-dashboard';
            $rootScope.pageTitle = 'Dashboard';
        }
    }
})();