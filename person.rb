class Person
  attr_reader :id
  attr_accessor :name, :age

  def initialize(age, name = 'Unknown', parent_permission: true)
    @id = Random.rand(1...1000)
    @name = name
    @age = age
    @parent_permission = parent_permission
  end

  private

  def of_age?
    @age >= 18
  end

  public

  def can_use_services?
    of_age? || @parent_permission
  end
end

person = Person.new(99, 'Kwame')
puts person.age
puts person.name
person.name = 'Kwame'
person.age = 49
puts person.age
puts person.name
puts person.can_use_services?
