require('minitest/autorun')
require('minitest/rg')

require_relative('../library.rb')

class TestLibraryArchives < Minitest::Test

  def setup()
    @books_list = [
      {
        title: "lord_of_the_rings",
        rental_details: {
          student_name: "Jeff",
          date: "01/12/18"
        }
      },
      {
        title: "catcher_in_the_rye",
        rental_details: {
          student_name: "Holden",
          date: "25/12/18"
        }
      },
      {
        title: "war_and_peace",
        rental_details: {
          student_name: "Mary",
          date: "04/07/18"
        }
      }
    ]
    @library = Library.new(@books_list)
  end

  def test_can_get_books
    assert_equal(@books_list, @library.get_books())  #calling in the library for the method of get_books
  end

  def test_can_get_book_info
    result = @books_list[0]
    assert_equal(result, @library.get_book_info("lord_of_the_rings"))
  end

  def test_can_get_rental_details
    result = {
      student_name: "Jeff",
      date: "01/12/18"
    }
    assert_equal(result, @library.get_rental_details("lord_of_the_rings"))
  end

  def test_can_add_book
    @library.add_book("1984")   # need to write a method adding a title
    result = {
      title: "1984",
      rental_details: {
        student_name: "",
        date: ""
      }
    }
    assert_equal(result, @library.get_book_info("1984"))    # calling on previous function to check if its there
  end

  def test_can_update_rental_details
    # create the function that allows rent book
    @library.rent_book("lord_of_the_rings", "Barry", "11/09/18")    # @Library is where you wanna do it
    renting_info = @library.get_rental_details("lord_of_the_rings") # just need title because previous function on called for title
    result = {              # create the result variable
      student_name: "Barry",
      date: "11/09/18"
    }
    assert_equal(result, renting_info)
  end
end
