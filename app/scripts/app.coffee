'use strict'

###*
 # @ngdoc overview
 # @name snappiOtgApp
 # @description
 # # snappiOtgApp
 #
 # Main module of the application.
###
angular
  .module('snappiOtgApp', [
    'ngAnimate',
    'ngCookies',
    'ngResource',
    'ngRoute',
    'ngSanitize',
    'ngTouch'
    'mgcrea.ngStrap'
  ])
  .constant('version', 'v0.1.0')
  .config ($locationProvider, $routeProvider) ->
    $locationProvider.html5Mode  false
    $routeProvider
      .when '/',
        templateUrl: 'views/main.html'
        controller: 'MainCtrl'
      .when '/main',
        templateUrl: 'views/main.html'
        controller: 'MainCtrl' 
      .when '/settings',
        templateUrl: 'views/settings.html'
        controller: 'SettingsCtrl'
      .otherwise
        redirectTo: '/'
  .run ($rootScope, $location, $anchorScroll, $timeout, $routeParams)->
    return

