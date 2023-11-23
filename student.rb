require_relative 'person'

class Student < Person
  attr_accessor :classroom

  def initialize(age, classroom, name = 'Unknown', parent_permission: true)
    super(age, name, parent_permission: parent_permission)
    @classroom = classroom
  end

  def play_hooky
    '¯(ツ)/¯'
  end
end

student = Student.new(20, 'Classroom A')
puts student.name
puts student.age
puts student.classroom
puts student.can_use_services?
puts student.play_hooky
