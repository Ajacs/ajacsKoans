describe 'About Conditionals', ->
  describe 'If', ->
    val = 1

    if true
      val = 99

    xit 'should change val if the expression is truthy', ->
      expect(val).toBe __

  describe 'If as an expression', ->
    val = 1
    val = if false
      99
    else
      -99

    xit 'should evaluate based on the truthiness of the condition', ->
      expect(val).toBe __

  describe 'Postfix if', ->
    describe 'With truthy condition', ->
      val = 1
      val = 99 if true

      xit 'should evaluate the assignment', ->
        expect(val).toBe __

    describe 'With falsey condition', ->
      val = 1
      val = 99 if false

      xit 'should do nothing', ->
        expect(val).toBe __

  describe 'Unless', ->
    val = 1

    unless false
      val = 99

    xit 'should change val if the expression is falsey', ->
      expect(val).toBe __

  describe 'Postfix unless', ->
    describe 'With truthy condition', ->
      val = 1
      val = 99 unless true

      xit 'should do nothing', ->
        expect(val).toBe __

    describe 'With falsey condition', ->
      val = 1
      val = 99 unless false

      xit 'should evaluate the assignment', ->
        expect(val).toBe __

  describe 'Ternary conditional operator', ->
    describe 'With truthy condition', ->
      is_morning = true
      suffix = if is_morning then 'AM' else 'PM'

      xit 'should evaluate the true part of the expression', ->
        expect(suffix).toBe __

    describe 'With falsey condition', ->
      is_morning = false
      suffix = if is_morning then 'AM' else 'PM'

      xit 'should evaluate the false part of the expression', ->
        expect(suffix).toBe __
