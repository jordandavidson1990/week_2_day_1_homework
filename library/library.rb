# Model a Library as a class.
#
# Create a class for a Library that has an array of books.
# Each book should be a hash with a title, which is a string, and rental
# details, which is another hash with a student name and due date.
# This should look something like:
#l
#   {
#     title: "lord_of_the_rings",
#     rental_details: {
#      student_name: "Jeff",
#      date: "01/12/16"
#     }
#   }
# Create a getter for the books
# Create a method that takes in a book title and returns all of the information
# about that book.
# Create a method that takes in a book title and returns only the rental details
# for that book.
# Create a method that takes in a book title and adds it to our book list (add a
# new hash for the book with the student name and date being left as empty strings)
# Create a method that changes the rental details of a book by taking in the title
# of the book, the student renting it and the date it's due to be returned.

class Library

  def initialize(books)
    @books = books  || []     # will create an empty array for you if theres no books to assign
  end

  def get_books
    return @books
  end

  def get_book_info(title)
    found_book = nil        # assigned book to nil at the start
    for book in @books      # looping for book in @books
      if book[:title] == title  # if the book title is the same as the title passed through
        found_book = book     # reassign the found book as book
      end
    end
    return found_book
  end

  def get_rental_details(title)
    book = get_book_info(title)     # calling previous function
    return book[:rental_details]
  end

  def add_book(title)
    new_book = {
      title: title,
      rental_details: {
        student_name: "",
        date: ""
      }
    }
    @books.push(new_book)   # puts it into the @books array
  end

  def rent_book(title, name, date)
    book = get_book_info(title)     # gives the book object i want
    book[:rental_details] = { student_name: name, date: date}   # creating a key value
  end

end
