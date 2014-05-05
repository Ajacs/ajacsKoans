describe 'About Higher Order Functions', ->
  xit "should use 'for' for simple iteration", ->
    numbers = [3..0]
    msg = ''

    tell = (num) -> if num > 0 then "#{num}, " else "Blastoff!"
    msg += tell(i) for i in numbers

    expect(msg).toEqual __
    expect(numbers).toEqual __

  xit "should use 'in' to test inclusion", ->
    numbers = [1..3]

    expect(if 2 in numbers then true else false).toBe __

  xit 'should use a CoffeeScript-style filter', ->
    numbers = [1..6]
    even = (a) -> a % 2 == 0
    odds = (x for x in numbers when not even(x))

    expect(odds).toEqual __
    expect(odds.length).toBe __
    expect(numbers.length).toBe __

  xit 'should use a CoffeeScript-style map to transform each element', ->
    numbers = [1..3]
    twice = (a) -> a * 2
    doubles = (twice(x) for x in numbers)

    expect(numbers).toEqual __
    expect(doubles).toEqual __

  xit 'should use a Coffeescript-style reduce to calculate a total', ->
    numbers = [1..3]
    total = 0

    sum = (a) -> total = total + a
    sum(x) for x in numbers

    expect(total).toBe __
    expect(numbers).toEqual __
