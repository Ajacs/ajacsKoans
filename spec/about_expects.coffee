describe 'About Expects', ->
  xit 'should expect true', ->
    expect(__).toBeTruthy()

  xit 'should have filled in values', ->
    expect(__).toEqual 1 + 1

  xit 'should understand type coercion is fixed', ->
    expect(__ == "0").toBeFalsy()
    expect(__ is "0").toBeFalsy()
    expect(__).toBeTruthy()

  xit 'should expect equality', ->
    expectedValue = __
    actualValue = 1 + 1
    expect(expectedValue is actualValue).toBeTruthy()

  xit 'should assert equality a better way', ->
    expectedValue = __
    actualValue = 1 + 1
    expect(actualValue).toEqual expectedValue
