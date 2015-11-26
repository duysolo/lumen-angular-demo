(function () {
    'use strict';

    angular
        .module('adminApp')
        .controller('SettingsController', SettingsController);

    SettingsController.$inject = ['$rootScope', 'SettingService', 'FlashMessageService'];
    function SettingsController($rootScope, SettingService, FlashMessageService) {
        var vm = this;

        vm.settings = settings;
        vm.saveSettings = saveSettings;
        vm.reload = reload;

        (function initController() {
            settings();
        })();

        function settings(callback)
        {
            $rootScope.bodyClass = 'page page-settings';
            $rootScope.pageTitle = 'Thiết lập';

            /*Show loading state*/
            $rootScope.showLoadingState();

            vm.allowSave = false;
            vm.settingItems = [];

            SettingService.GetAll(function(response){
                vm.settingItems = response;
                vm.allowSave = true;
                $rootScope.hideLoadingState();
                /*Callback*/
                if(callback) callback();
            }, function(response){
                vm.settingItems = [];
                vm.allowSave = false;
                $rootScope.hideLoadingState();
                if(callback) callback();
            });
        }

        function saveSettings()
        {
            SettingService.UpdateAll(vm.settingItems, function(response){
                settings(function(){
                    FlashMessageService.Success('Cập nhật thiết lập thành công.', false);
                    Utility.scrollToTop();
                });
            }, function(response){
                settings(function(){
                    FlashMessageService.Error('Cập nhật thiết lập thất bại.', false);
                    Utility.scrollToTop();
                });
            });
        }

        function reload()
        {
            settings(function(){
                FlashMessageService.Info('Đã bỏ qua các thay đổi.', false);
                Utility.scrollToTop();
            });
        }
    }
})();