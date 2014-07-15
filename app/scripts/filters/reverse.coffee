'use strict'

###*
 # @ngdoc filter
 # @name snappiOtgApp.filter:reverse
 # @function
 # @description
 # # reverse
 # Filter in the snappiOtgApp.
###
angular.module('snappiOtgApp')
  .filter 'reverse', ()->
    return (items)->
      console.log items
      reversed = items.slice().reverse()
      console.log reversed
      return reversed
