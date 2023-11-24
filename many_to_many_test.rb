require_relative 'book'
require_relative 'person'
require_relative 'rental'

book1 = Book.new('In the Chest of a woman', 'Efo Kwadwo Mawugbe')
book2 = Book.new('Good morning Holy Spirit', 'Benny Hinn')

person1 = Person.new(31, 'Kofi')
person2 = Person.new(23, 'Rand')

Rental.new('2-Sept', book1, person1)
Rental.new('4-Sept', book1, person2)
Rental.new('6-Sept', book2, person2)

puts "#{person1.name}'s rentals: "
person1.rentals.each { |rental| puts "#{rental.book.title} rented on #{rental.date}" }

puts "#{person2.name}'s rentals: "
person2.rentals.each { |rental| puts "#{rental.book.title} rented on #{rental.date}" }

puts "#{book2.title}'s rentals:"
book2.rentals.each { |rental| puts rental.person.name }

puts "#{book1.title}'s rentals:"
book1.rentals.each { |rental| puts rental.person.name }
