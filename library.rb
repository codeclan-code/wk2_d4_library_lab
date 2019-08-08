class Library

  attr_reader :name, :stock


  def initialize(name)
    @name = name
    @stock = []
  end

  def add_book(book)
    @stock << book
  end

  def check_book(book)
    @stock.include?(book)
  end


  def loan_book(book)
    @stock.delete(book)
    check_book(book)
  end

end
