describe 'About Assignments', ->
  my_variable = null

  xit 'should bind the value to the variable', ->
    expect(my_variable).toBe __

  describe 'Simple array destructuring', ->
    [a, b] = ['alpha', 'beta']

    xit 'should assign multiple variables according to a pattern', ->
      expect(a).toBe __
      expect(b).toBe __

  describe 'Deep destructuring assignment', ->
    structure =
      name: 'John Connor'
      address:
        number: 45
        street: 'Agnes St'
        city: 'London'

    { address: { number: extracted_number } } = structure
    { address: { street: extracted_street, city: extracted_city } } = structure

    xit 'should extract nested values', ->
      expect(extracted_number).toBe __
      expect(extracted_street).toBe __
      expect(extracted_city).toBe __

    xit 'should understand destructuring works with splats', ->
      phrase = 'Now is the time for all good men to come to the aid of the Party'

      [start, middle..., end] = phrase.split ' '

      expect(start).toBe __
      expect(end).toBe __
