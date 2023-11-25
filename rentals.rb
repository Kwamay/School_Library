class Rental
  attr_accessor :date, :book, :person

  def initialize(date, book, person)
    @date = date
    @book = book
    @person = person

    person.add_rentals(self)
    book.add_rentals(self)
  end
end
