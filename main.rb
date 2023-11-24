require_relative 'person'
require_relative 'capitalized_decorator'
require_relative 'trimmer_decorator'

person = Person.new(22, name: 'maximilianus')
person.correct_name
capitalized_person = CapitalizeDecorator.new(person)
puts capitalized_person.correct_name
capitalized_trimmed_person = TrimmerDecorator.new(capitalized_person)
puts capitalized_trimmed_person.correct_name
