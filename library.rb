class Library
attr_reader :name, :books, :people

def initialize(options={})
  @name = options[:name]
  @books = {}
  @people = {}

end

def lend(person_name, book_title)
  person = people[person_name]
  book = books.delete(book_title)

  person.borrow(book)
  
end

def person(person_name)
  person = library.people[person_name]
  book = books.delete(book_title)
end

def recieve_book(person_name, book_title)
  #
  person = library.people[person_name]
  book = books.return_book(book_title)
  
  person.return(book)
end
def add_person(person)
  people[person.name] = person
end
def add_book(book)
  books[book.title] = book 
end

def list_people
  if people.empty?
    "billy no mates"
  else
    people.map{|key, person| person.pretty_string}.join("\n")
  end
end
def list_books
  if books.empty?
    "Soz, no books here"
  else
    books.map {|key, book| book.pretty_string}.join("\n")
  end
end

end