BuiltinType = require '../../../../lib/type/builtin_type'
should      = require 'should'

describe 'BuiltinType#equals', ->

  numType  = new BuiltinType(Number)
  numType2 = new BuiltinType(Number)
  strType  = new BuiltinType(String)

  it 'should apply structural equality', ->
    numType.equals(numType2).should.be.true

  it 'should apply distinguish different types', ->
    numType.equals(strType).should.be.false

  it 'should be a total function, with null for non types', ->
    numType.equals(12).should.be.false
