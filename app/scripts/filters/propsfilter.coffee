'use strict'

###*
 # @ngdoc filter
 # @name nyHighwaysApp.filter:propsFilter
 # @function
 # @description
 # # propsFilter
 # Filter in the nyHighwaysApp.
###
angular.module 'nyHighwaysApp'
  .filter 'propsFilter', ->
    (items, props) ->
      out = []
      if angular.isArray items
        items.forEach (item) ->
          itemMatches = false
          keys = Object.keys props
          for prop, i in keys
            text = props[prop].toLowerCase()
            if item[prop].toString().toLowerCase().indexOf(text) != -1 
              itemMatches = true
              break
          if itemMatches
            out.push item
      else
        out = items
      out
