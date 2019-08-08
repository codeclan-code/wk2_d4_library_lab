require('minitest/autorun')
require('minitest/rg')
require_relative('../library')
require_relative('../book')
require_relative('../customer')

class TestLibrary < MiniTest::Test

  def setup

    @book1 = Book.new("Lord of the Rings")
    @book2 = Book.new("Harry Potter")
    @book3 = Book.new("War and Peace")

    @library = Library.new("Central Library")

    @customer = Customer.new("Joe",true)

  end

  def test_library_has_name
    library = Library.new("Central Library")
    assert_equal("Central Library", library.name())
  end

  def test_count_books_in_library
    assert_equal(0, @library.stock.count())
  end

  def test_add_book_to_library
    @library.add_book(@book1)
    assert_equal(1, @library.stock.count())
  end

  def test_check_book_in_library
    @library.add_book(@book3)
    assert_equal(true, @library.check_book(@book3))
  end

  def test_library_can_loan_book
    @library.add_book(@book3)
    assert_equal(false, @library.loan_book(@book3))
  end


end
