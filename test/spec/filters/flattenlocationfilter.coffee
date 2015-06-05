'use strict'

describe 'Filter: flattenLocationFilter', ->

  # load the filter's module
  beforeEach module 'nyHighwaysApp'

  # initialize a new instance of the filter before each test
  flattenLocationFilter = {}
  beforeEach inject ($filter) ->
    flattenLocationFilter = $filter 'flattenLocationFilter'

  it 'should return the input prefixed with "flattenLocationFilter filter:"', ->
    location = { coords: { latitude: '41.1', longitude: '71.8' } }
    expect(flattenLocationFilter location).toBe ('41.1,71.8')
