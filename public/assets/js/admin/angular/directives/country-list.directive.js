(function () {
    'use strict';

    angular
        .module('app')
        .directive('countryList', countryList);

    function countryList() {
        return {
            restrict: 'EA', //E = element, A = attribute, C = class, M = comment
            scope: {
                //@ reads the attribute value, = provides two-way binding, & works with functions
                drClass: '@',
                drName: '@',
                bindModel: '=ngModel'
            },
            templateUrl: baseUrlDirectiveTemplates + 'country-list.directive.html',
            controller: countryListDirectiveController,
            controllerAs: 'dr',
            link: function (scope, element, attrs, ctrls) {

            } //DOM manipulation
        };
    }

    countryListDirectiveController.$inject = ['$http'];
    function countryListDirectiveController($http)
    {
        var dr = this;

        dr.getAllTimezone = getAllTimezone;

        dr.countries = [];

        (function initController() {
            getAllTimezone();
        })();

        function getAllTimezone()
        {
            $http.get(baseGlobalApi + 'global/country-list').success(function(response){
                dr.countries = response;
            }).error(function(response){
                dr.countries = [];
            });
        }
    }
})();