Attribute = require '../../../lib/support/attribute'
Heading   = require '../../../lib/support/heading'
should    = require 'should'

describe "Heading#toName", ->

  subject = (attributes) -> new Heading(attributes).toName()

  describe 'with no attribute', ->
    subject([]).should.equal('')
  
  describe 'with one attribute', ->
    attributes = [ new Attribute('red', intType) ]
    subject(attributes).should.equal('red: intType')

  describe 'with multiple attributes', ->
    attributes = [ 
        new Attribute('red', intType), 
        new Attribute('blue', floatType)
      ]
    
    subject(attributes).should.equal('red: intType, blue: floatType')
