class Person
   attr_reader :name, :books

   def initialize(options={})
    @name = options[:name]
    @books = {}
  end
  def borrow(book)
    books[book.title] = book
  end

  def list_books
  if books.empty?
    "Sorry, you haven't borrowed any book"
  else
    books.map {|key, book| book.pretty_string}.join("\n")
  end
end
  def pretty_string
    "'#{name}' has #{books.size} book#{'s' unless books.size == 1} borrowed from library."
  end
end