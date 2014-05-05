describe 'About Functions', ->
  xit 'should declare functions', ->
    add = (a, b) -> a + b
    expect(add(1, 2)).toBe __

  xit 'should default argument values', ->
    add = (a, b = 3) -> a + b
    expect(add(5)).toBe __

  xit 'should know internal variables override outer variables', ->
    message = 'Outer'
    getMessage = -> message
    overrideMessage = -> message = 'Inner'

    expect(getMessage()).toBe __
    expect(overrideMessage()).toBe __
    expect(message).toBe __

  xit 'should have lexical scoping', ->
    variable = 'top-level'

    parentfunction = ->
      variable = 'local'
      childfunction = -> variable

    expect(parentfunction()()).toBe __

  xit 'should use lexical scoping to synthesise functions', ->
    makeIncreaseByFunction = (increaseByAmount) ->
      (numberToIncrease) -> numberToIncrease + increaseByAmount

    increaseBy3 = makeIncreaseByFunction 3
    increaseBy5 = makeIncreaseByFunction 5

    expect(increaseBy3(10) + increaseBy5(10)).toBe __

  xit 'should allow extra function arguments', ->
    returnFirstArg = (firstArg) -> firstArg
    expect(returnFirstArg('first', 'second', 'third')).toBe __

    returnSecondArg = (firstArg, secondArg) -> secondArg
    expect(returnSecondArg('only give first arg')).toBe __

    returnAllArgs = (allargs...) -> allargs
    expect(returnAllArgs('first', 'second', 'third')).toEqual __

    returnAllButFirst = (firstArg, rest...) -> rest
    expect(returnAllButFirst('first', 'second', 'third')).toEqual __

  xit 'should pass functions as values', ->
    appendRules = (name) -> name + ' rules!'
    appendDoubleRules = (name) -> name + ' totally rules!'

    praiseSinger = givePraise: appendRules
    expect(praiseSinger.givePraise 'John' ).toBe __

    praiseSinger.givePraise = appendDoubleRules
    expect(praiseSinger.givePraise 'Mary' ).toBe __
