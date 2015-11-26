(function () {
    'use strict';

    angular
        .module('app')
        .factory('FlashMessageService', FlashMessageService);

    FlashMessageService.$inject = ['$rootScope'];
    function FlashMessageService($rootScope) {
        var service = {};

        service.Success = Success;
        service.Error = Error;
        service.Info = Info;
        service.Warning = Warning;

        initService();

        return service;

        function initService() {
            $rootScope.$on('$locationChangeStart', function () {
                clearFlashMessage();
            });

            function clearFlashMessage() {
                var flash = $rootScope.flash;
                if (flash) {
                    if (!flash.keepAfterLocationChange) {
                        delete $rootScope.flash;
                    } else {
                        // only keep for a single location change
                        flash.keepAfterLocationChange = false;
                    }
                }
            }
        }

        function Success(message, keepAfterLocationChange) {
            $rootScope.flash = {
                message: message,
                type: 'success',
                keepAfterLocationChange: keepAfterLocationChange
            };
        }

        function Error(message, keepAfterLocationChange) {
            $rootScope.flash = {
                message: message,
                type: 'error',
                keepAfterLocationChange: keepAfterLocationChange
            };
        }

        function Info(message, keepAfterLocationChange) {
            $rootScope.flash = {
                message: message,
                type: 'info',
                keepAfterLocationChange: keepAfterLocationChange
            };
        }

        function Warning(message, keepAfterLocationChange) {
            $rootScope.flash = {
                message: message,
                type: 'warning',
                keepAfterLocationChange: keepAfterLocationChange
            };
        }
    }

})();