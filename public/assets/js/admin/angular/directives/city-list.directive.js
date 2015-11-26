(function () {
    'use strict';

    angular
        .module('app')
        .directive('cityList', cityList);

    function cityList() {
        return {
            restrict: 'EA', //E = element, A = attribute, C = class, M = comment
            scope: {
                //@ reads the attribute value, = provides two-way binding, & works with functions
                drClass: '@',
                drName: '@',
                bindModel: '=ngModel',
                drFilterByCountry: '='
            },
            templateUrl: baseUrlDirectiveTemplates + 'city-list.directive.html',
            controller: cityListDirectiveController,
            controllerAs: 'dr',
            link: function (scope, element, attrs, ctrls) {

            } //DOM manipulation
        };
    }

    cityListDirectiveController.$inject = ['$http'];
    function cityListDirectiveController($http)
    {
        var dr = this;

        dr.getAllTimezone = getAllTimezone;

        dr.cities = [];

        (function initController() {
            getAllTimezone();
        })();

        function getAllTimezone()
        {
            $http.get(baseGlobalApi + 'global/city-list').success(function(response){
                dr.cities = response;
            }).error(function(response){
                dr.cities = [];
            });
        }
    }
})();