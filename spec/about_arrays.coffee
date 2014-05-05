describe 'About Arrays', ->
  xit 'should create arrays', ->
    emptyArray = []

    expect(typeof emptyArray).toBe __
    expect(emptyArray.length).toBe __

  xit 'should understand array literals', ->
    array = []
    expect(array).toEqual []

    array[0] = 1
    expect(array).toEqual [1]

    array[1] = 2
    expect(array).toEqual [1, __]

    array.push(3)
    expect(array).toEqual __

  xit 'should understand array length', ->
    fourNumberArray = [1, 2, 3, 4]

    expect(fourNumberArray.length).toBe __
    fourNumberArray.push(5, 6)
    expect(fourNumberArray.length).toBe __

    tenEmptyElementArray = new Array(10)
    expect(tenEmptyElementArray.length).toBe __

    tenEmptyElementArray.length = 5
    expect(tenEmptyElementArray.length).toBe __

  xit 'should understand multitype arrays', ->
    multiTypeArray = [0
                      1
                      'two'
                      -> 3
                      value1: 4
                      value2: 5
                      [6
                      7]]

    expect(multiTypeArray[0]).toBe __
    expect(multiTypeArray[2]).toBe __
    expect(multiTypeArray[3]()).toBe __
    expect(multiTypeArray[4].value1).toBe __
    expect(multiTypeArray[5][0]).toBe __

  xit 'should understand array ranges', ->
    range = [1..5]
    expect(range).toEqual __

    sdrawkcab = [3..1]
    expect(sdrawkcab).toEqual __

  xit 'should understand array comprehension', ->
    array = [1, 2, 3]
    accumulator = 0
    accumulator += element for element in array

    expect(accumulator).toEqual __

  xit 'should understand a more compact array comprehension', ->
    array = [1, 2, 3]
    accumulator = 1
    accumulator += element for element in array

    expect(accumulator).toEqual __

  xit 'should slice arrays', ->
    array = ['peanut', 'butter', 'and', 'jelly']

    expect(array.slice(0, 1)).toEqual __
    expect(array.slice(0, 2)).toEqual __
    expect(array.slice(2, 2)).toEqual __
    expect(array.slice(2, 20)).toEqual __
    expect(array.slice(3, 0)).toEqual __
    expect(array.slice(3, 100)).toEqual __
    expect(array.slice(5, 1)).toEqual __

  xit 'should understand range slicing', ->
    oneToTen = [1..10]
    expect(oneToTen[3..5]).toEqual __

    myString = 'my string'[0..2]
    expect(myString).toEqual __

    firstTwo = ['one', 'two', 'three']
    expect(firstTwo[__]).toEqual ['one', 'two']

  xit 'should know array references', ->
    array = ['zero', 'one', 'two'
      'three', 'four', 'five']

    passedByReference = (refArray) ->
      refArray[1] = 'changed in function'

    passedByReference array
    expect(array[1]).toBe __

    assignedArray = array
    assignedArray[5] = 'changed in assignedArray'
    expect(array[5]).toBe __

    copyOfArray = array.slice()
    copyOfArray[3] = 'changed in copyOfArray'
    expect(array[3]).toBe __

  xit 'should push and pop', ->
    array = [1, 2]

    array.push 3
    expect(array).toEqual __

    poppedValue = array.pop()
    expect(poppedValue).toBe __
    expect(array).toEqual __

  xit 'should shift arrays', ->
    array = [1, 2]

    array.unshift 3
    expect(array).toEqual __

    shiftedValue = array.shift()
    expect(shiftedValue).toEqual __
    expect(array).toEqual __
