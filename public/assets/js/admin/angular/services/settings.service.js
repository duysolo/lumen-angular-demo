(function () {
    'use strict';

    angular
        .module('app')
        .factory('SettingService', SettingService);

    SettingService.$inject = ['$http'];
    function SettingService($http) {
        var service = {};

        service.GetAll = GetAll;
        service.UpdateAll = UpdateAll;

        return service;

        function GetAll(callback, callbackError)
        {
            return $http.get(baseApi + 'settings').success(callback).error(callbackError);
        }

        function UpdateAll($data, callback, callbackError)
        {
            $http.post(baseApi + 'settings', $data).success(function (response) {
                if(callback) callback(response);
            }).error(function(response){
                if(callbackError) callbackError(response);
            });
        }
    }
})();