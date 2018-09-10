require('minitest/autorun')
require('minitest/rg')

require_relative('../library.rb')

class TestLibraryArchives < Minitest::Test

  def setup
    @library = Library.new(
      [
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
    )
  end
def get_books
result = @library.title("lord_of_the_rings")
assert_equal(result, "lord_of_the_rings")
end


end
