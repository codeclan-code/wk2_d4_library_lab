require('minitest/autorun')
require('minitest/rg')
require_relative('../book')

class TestBook < MiniTest::Test


def test_get_book_name
  book = Book.new("Lord of the Rings")
  assert_equal("Lord of the Rings", book.name())
end







end
