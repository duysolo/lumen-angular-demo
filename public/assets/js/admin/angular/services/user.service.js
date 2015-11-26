(function () {
    'use strict';

    angular
        .module('app')
        .factory('UserService', UserService);

    UserService.$inject = ['$http'];
    function UserService($http) {
        var service = {};

        service.GetAll = GetAll;
        service.AuthUser = AuthUser;

        return service;

        function GetAll(callback, callbackError) {
            return $http.get(baseApi + 'users').success(callback).error(callbackError);
        }

        function AuthUser(username, password, callback, callbackError) {
            $http.post(baseApi + 'users/authenticate', { username: username, password: password }).success(function (response) {
                if(callback) callback(response);
            }).error(function(response){
                if(callbackError) callbackError(response);
            });
        }
    }
})();