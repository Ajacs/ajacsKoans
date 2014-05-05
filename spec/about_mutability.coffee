describe 'About Mutability', ->
  xit 'should expect object properties to be public and mutable', ->
    aPerson = firstname: 'John', lastname: 'Smith'
    aPerson.firstname = 'Alan'

    expect(aPerson.firstname).toBe __

  xit 'should understand that constructed properties are public and mutable', ->
    Person = (firstname, lastname) ->
      @firstname = firstname
      @lastname = lastname

    aPerson = new Person 'John', 'Smith'
    aPerson.firstname = 'Alan'

    expect(aPerson.firstname).toBe __

  xit 'should expect prototype properties to be public and mutable', ->
    Person = (firstname, lastname) ->
      @firstname = firstname
      @lastname = lastname

    Person::getFullName = -> @firstname + ' ' + @lastname

    aPerson = new Person 'John', 'Smith'
    expect(aPerson.getFullName()).toBe __

    aPerson.getFullName = -> @lastname + ', ' + @firstname
    expect(aPerson.getFullName()).toBe __

  xit 'should know that variables inside constructor and constructor args are private', ->
    Person = (firstname, lastname) ->
      fullName = firstname + ' ' + lastname
      @getFirstName = -> firstname
      @getLastName = -> lastname
      @getFullName = -> fullName
      @

    aPerson = new Person 'John', 'Smith'
    aPerson.firstname = 'Penny'
    aPerson.lastname = 'Andrews'
    aPerson.fullName = 'Penny Andrews'

    expect(aPerson.getFirstName()).toBe __
    expect(aPerson.getLastName()).toBe __
    expect(aPerson.getFullName()).toBe __

    aPerson.getFullName = -> aPerson.lastname + ', ' + aPerson.firstname
    expect(aPerson.getFullName()).toBe __
