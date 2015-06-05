'use strict'

###*
 # @ngdoc filter
 # @name nyHighwaysApp.filter:flattenLocationFilter
 # @function
 # @description
 # # flattenLocationFilter
 # Filter in the nyHighwaysApp.
###
angular.module 'nyHighwaysApp'
  .filter 'flattenLocationFilter', ->
    (input) ->
      if input && input.coords && input.coords.latitude && input.coords.longitude
        input.coords.latitude + ',' + input.coords.longitude
      else
        input
