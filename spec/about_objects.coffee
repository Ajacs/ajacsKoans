describe 'About Objects', ->
  describe 'Properties', ->
    meglomaniac = {}
    beforeEach -> meglomaniac = mastermind: 'Joker', henchwoman: 'Harley'

    it 'should confirm objects are collections of properties', ->
      expect(meglomaniac.mastermind).toBe 'Joker'

    it 'should confirm that properties are case sensitive', ->
      expect(meglomaniac.henchwoman).toBe 'Harley'
      expect(meglomaniac.henchWoman).toBe undefined
  it 'should know properties that are functions act like methods', ->
    meglomaniac =
      mastermind: 'Brain',
      henchman: 'Pinky',
      battleCry: (noOfBrains) ->
        'They are ' + @henchman + ' and the' +
        Array(noOfBrains + 1).join(' ' + @mastermind)

    battleCry = meglomaniac.battleCry 4
    expect('They are Pinky and the Brain Brain Brain Brain Brain ').toMatch battleCry

  it "should confirm that when a function is attached to an object, 'this' refers to the object", ->
    currentYear = (new Date).getFullYear()
    meglomaniac =
      mastermind: 'James Wood'
      henchman: 'Adam West'
      birthYear: 1970
      calculateAge: -> currentYear - @birthYear

    expect(currentYear).toBe 2014
    expect(meglomaniac.calculateAge()).toBe 44

  describe "'in' keyword", ->
    meglomaniac = {}
    beforeEach ->
      meglomaniac =
        mastermind: 'The Monarch'
        henchwoman: 'Dr Girlfriend'
        theBomb: true

    xit 'should have the bomb', ->
      hasBomb = meglomaniac.theBomb?
      expect(hasBomb).toBe __

    xit 'should not have the detonator however', ->
      hasDetonator = meglomaniac.theDetonator?
      expect(hasDetonator).toBe __

  xit 'should know that properties can be added and deleted', ->
    meglomaniac =
      mastermind: 'Agent Smith'
      henchman: 'Agent Smith'

    expect(meglomaniac.secretary?).toBe __

    meglomaniac.secretary = 'Agent Smith'
    expect(meglomaniac.secretary?).toBe __

    delete meglomaniac.henchman
    expect(meglomaniac.henchman?).toBe __

  xit 'should use prototype to add to all objects', ->
      Circle = (radius) -> @radius = radius

      simpleCircle = new Circle 10
      colouredCircle = new Circle 5
      colouredCircle.colour = 'red'

      expect(simpleCircle.colour).toBe __
      expect(colouredCircle.colour).toBe __

      Circle.prototype.describe = -> 'This circle has a radius of: ' + @radius

      expect(simpleCircle.describe()).toBe __
      expect(colouredCircle.describe()).toBe __
