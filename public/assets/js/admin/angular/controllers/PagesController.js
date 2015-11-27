(function () {
    'use strict';

    angular
        .module('adminApp')
        .controller('PagesController', PagesController);

    PagesController.$inject = ['$rootScope', '$routeParams', '$location', 'PageService', 'FlashMessageService'];
    function PagesController($rootScope, $routeParams, $location, PageService, FlashMessageService) {
        var vm = this;

        vm.pageList = pageList;
        vm.pageChanged = pageChanged;
        vm.savePage = savePage;
        vm.multiSelect = multiSelect;
        vm.changeSelect = changeSelect;
        vm.groupActions = groupActions;

        vm.currentPage = 1;
        vm.perPage = 1;
        vm.totalItems = 0;
        vm.maxSize = 5;

        vm.currentObject = {};
        vm.pages = {};

        (function initController() {
            if(!$routeParams.pageId)
            {
                pageList();
            }
            else
            {
                if($routeParams.pageId == 0)
                {
                    createPage();
                }
                else
                {
                    details($routeParams.pageId);
                }
            }
        })();

        function pageList(callback)
        {
            $rootScope.bodyClass = 'page page-pages';
            $rootScope.pageTitle = 'Trang nội dung';

            /*Show loading state*/
            $rootScope.showLoadingState();

            vm.pages = [];
            vm.paged = 1;
            vm.selectedPages = {};
            vm.checkedAllPages = false;

            getPages(vm.paged, callback);
        }

        function getPages($paged, callback)
        {
            PageService.GetAll($paged, function(response){
                vm.pages = response.data;
                vm.currentPage = response.current_page;
                vm.perPage = response.per_page;
                vm.totalItems = response.total;

                $rootScope.hideLoadingState();
                /*Callback*/
                if(callback) callback();
            }, function(response){
                vm.pages = [];
                $rootScope.hideLoadingState();
                if(callback) callback();
            });
        }

        function pageChanged()
        {
            getPages(vm.currentPage);
        }

        function getPageTemplates()
        {
            vm.pageTemplates = [];
            /*Get page templates*/
            PageService.GetPageTemplates(function(response){
                vm.pageTemplates = response;
            }, function(response){
                vm.pageTemplates = [];
            });
        }

        function details($pageId, callback)
        {
            $rootScope.bodyClass = 'page page-pages-details';

            /*Show loading state*/
            $rootScope.showLoadingState();

            vm.currentObject = {};

            /*Get current page*/
            PageService.GetById($pageId, function(response){
                vm.currentObject = response;
                $rootScope.pageTitle = 'Chỉnh sửa nội dung - ' + vm.currentObject.title;
                $rootScope.hideLoadingState();
                /*Callback*/
                if(callback) callback();
            }, function(response){
                vm.currentObject = {};
                $rootScope.hideLoadingState();
                if(callback) callback();
            });

            getPageTemplates();
        }

        function savePage()
        {
            PageService.UpdatePage(vm.currentObject, function(response){
                if(vm.currentObject.id == 0)
                {
                    $location.path('pages/' + response.data.id);
                }
                FlashMessageService.Success('Cập nhật nội dung thành công.', false);
                Utility.scrollToTop();
            }, function(response){
                FlashMessageService.Error('Cập nhật nội dung thất bại.', false);
                Utility.scrollToTop();
            });
        }

        function createPage()
        {
            $rootScope.bodyClass = 'page page-pages-details page-create-page';

            vm.currentObject = {
                id: 0,
                position: 0,
                page_template: '',
                title: '',
                slug: '',
                content: '',
                meta_keywords: '',
                meta_description: '',
                status: 1
            };

            getPageTemplates();
        }

        /*Multi select pages*/
        function multiSelect()
        {
            if(!vm.checkedAllPages)
            {
                vm.selectedPages = {};
            }
            else
            {
                var selectedAllPages = {};
                for(var i = 0; i < vm.pages.length; i++)
                {
                    var $id = vm.pages[i].id;
                    selectedAllPages[$id] = true;
                }
                vm.selectedPages = selectedAllPages;
            }
        }

        function countSelected(obj)
        {
            var size = 0, key;
            for (key in obj) {
                if (obj.hasOwnProperty(key) && obj[key] == true) size++;
            }
            return size;
        }

        function changeSelect()
        {
            if(vm.pages.length == countSelected(vm.selectedPages))
            {
                vm.checkedAllPages = true;
            }
            else
            {
                vm.checkedAllPages = false;
            }
        }

        function groupActions($action)
        {
            var ids = [], data = {};
            for(var key in vm.selectedPages)
            {
                if(vm.selectedPages.hasOwnProperty(key) && vm.selectedPages[key] == true)
                {
                    ids.push(key);
                }
            }
            switch ($action)
            {
                case 'delete':
                {
                    return PageService.DeletePage(ids, function(response){
                        FlashMessageService.Success('Xóa trang thành công.', false);
                    }, function(response){
                        FlashMessageService.Error('Xóa trang thất bại.', false);
                    });
                } break;
                case 'show':
                {
                    data.status = 1;
                } break;
                case 'hide':
                {
                    data.status = 0;
                } break;
            }
            PageService.UpdatePages(ids, data, function(response){
                FlashMessageService.Success('Cập nhật trang thành công.', false);
            }, function(response){
                FlashMessageService.Error('Cập nhật trang thất bại.', false);
            });
            getPages(vm.currentPage);
        }
    }
})();