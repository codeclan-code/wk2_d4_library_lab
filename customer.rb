class Customer

  attr_reader :name, :id
  attr_accessor :borrowed

  def initialize(name, id)
    @name = name
    @id = id
    @borrowed = []
  end

  def add_book(book)
    @borrowed << book
  end

end
