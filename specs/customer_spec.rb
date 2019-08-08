require('minitest/autorun')
require('minitest/rg')
require_relative('../customer')
require_relative('../book')
require_relative('../library')

class TestCustomer < MiniTest::Test

  def setup

    @book1 = Book.new("Lord of the Rings")
    @book2 = Book.new("Harry Potter")
    @book3 = Book.new("War and Peace")

    @library = Library.new("Central Library")

    @customer = Customer.new("Joe",true)

  end

  def test_customer_has_name
    customer = Customer.new("Joe", true)
    assert_equal("Joe", customer.name())
  end

def test_customer_has_id
  customer = Customer.new("Joe", true)
  assert_equal(true, customer.id())
end

def test_customer_can_borrow_book
  @customer.add_book(@book1)
  @customer.add_book(@book2)
  @customer.add_book(@book3)
  assert_equal(3, @customer.borrowed.count())
end

end
