require_relative 'person'
require_relative 'capitalized_decorator'
require_relative 'trimmer_decorator'
require_relative 'classroom'
require_relative 'student'

classroom1 = Classroom.new('Bible Class')
classroom2 = Classroom.new('Prayer Class')

student1 = Student.new(10, 'Raphel')
student2 = Student.new(12, 'Urel')
student3 = Student.new(18, 'Michael')
student4 = Student.new(20, 'Gabriel')

classroom1.add_student(student2)
classroom1.add_student(student3)
classroom2.add_student(student1)
classroom2.add_student(student4)

puts "#{student1.name} belongs to #{student1.classroom}"
puts "#{classroom2.label} has #{classroom2.student_list}"