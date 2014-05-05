class Muppet
  constructor: (@age, @hobby) ->
  answerNanny: -> "Everything's cool!"

class SwedishChef extends Muppet
  constructor: (age, hobby, @mood) ->
    super(age, hobby)

  cook: -> 'Mmmm soup!'

describe 'About Inheritance', ->
  beforeEach ->
    @muppet = new Muppet 2, 'coding'
    @swedishChef = new SwedishChef 3, 'cooking', 'chillin'

  xit 'should be able to call a method on the derived object', ->
    expect(@swedishChef.cook()).toEqual __

  xit 'should be able to call a method on the base object', ->
    expect(@swedishChef.answerNanny()).toEqual __

  xit 'should set constructor parameters on the base object', ->
    expect(@swedishChef.age).toEqual __
    expect(@swedishChef.hobby).toEqual __

  xit 'should set constructor parameters on the derived object', ->
    expect(@swedishChef.mood).toEqual __

  xit 'should allow instances to override class methods', ->
    gonzo = new Muppet 3, 'daredevil performer'
    gonzo.answerNanny = -> 'Hehehe!'

    expect(gonzo.answerNanny()).toBe __
    expect(@muppet.answerNanny()).toBe __

  xit 'should allow derived classes to override base classes', ->
    class DanishChef extends SwedishChef
      cook: -> 'Sizzle'

    redzepi = new DanishChef 30, 'foraging', 'happy'

    expect(redzepi.cook()).toBe __
    expect(@swedishChef.cook()).toBe __
