(function () {
    'use strict';

    angular
        .module('app')
        .directive('timezoneList', timezoneList);

    function timezoneList() {
        return {
            restrict: 'EA', //E = element, A = attribute, C = class, M = comment
            scope: {
                //@ reads the attribute value, = provides two-way binding, & works with functions
                drClass: '@',
                drName: '@',
                bindModel: '=ngModel'
            },
            templateUrl: baseUrlDirectiveTemplates + 'timezone-list.directive.html',
            controller: timezoneListDirectiveController,
            controllerAs: 'dr',
            link: function (scope, element, attrs, ctrls) {

            } //DOM manipulation
        };
    }

    timezoneListDirectiveController.$inject = ['$http'];
    function timezoneListDirectiveController($http)
    {
        var dr = this;

        dr.getAllTimezone = getAllTimezone;

        dr.timezones = [];

        (function initController() {
            getAllTimezone();
        })();

        function getAllTimezone()
        {
            $http.get(baseGlobalApi + 'global/timezone-list').success(function(response){
                dr.timezones = response;
            }).error(function(response){
                dr.timezones = [];
            });
        }
    }
})();