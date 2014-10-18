var NGGab = angular.module('NGGab', []);

NGGab.directive('appHeader', function () {
    return {
        restrict: "E",
        templateUrl: 'templates/app-header.html'
    };
});