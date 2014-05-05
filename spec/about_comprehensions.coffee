describe 'About Comprehensions', ->
  describe 'As a for loop', ->
    result = []
    result.push(i) for i in [1, 2, 3, 4]

    xit 'should iterate over the array', ->
      expect(result).toEqual __

  describe 'With objects', ->
    colours =
      red: 'ff0000'
      blue: '00ff00'
      green: '0000ff'

    [keys, values] = [[], []]

    for key, value of colours
      keys.push key
      values.push value

    xit 'should iterate over the contents of the object', ->
      expect(keys).toEqual __
      expect(values).toEqual __

  describe 'With an output function', ->
    result = []
    result = (2 * x for x in [1, 2, 3])

    xit 'should collect the result of mapping the output function over the array', ->
      expect(result).toEqual __

  describe 'With a filter', ->
    hated_adverbs = []
    hated_adverbs = (word for word in ['slowly', 'loudly', 'thoughtful', 'telegram', 'submarine'] when /.*ly/.test(word))

    xit 'should select the adverbs', ->
      expect(hated_adverbs).toEqual __
