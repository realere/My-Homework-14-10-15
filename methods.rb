def lend_book(library)
  puts library.list_books
  puts
  print"Which book do you want to lend(by name): "
  book_title = gets.chomp

  puts
  puts library.list_people
  print "Which person is going to borrow it (by name): "
  person_name = gets.chomp

  library.lend(person_name, book_title)
  
end

def return_book(library)
  puts person.list_books
  puts
  print"Which person will like to return a book (by name): "
  book_title = gets.chomp

  puts
  puts library.list_people
  print "Which person is going to borrow it (by name): "
  person_name = gets.chomp

  library.lend(person_name, book_title)

#def return_book(library)
  #puts list_people(library)
  #puts
  #print"Which person will like to return a book(by name): "
  #person_name =gets.chomp
  
 # puts
  #puts person.list_books
  #puts
  #print "Which book do you want to return(by name): "
  #book_title = gets.chomp

  #person.return(library, book_title)
#end
def list_people(library)
  puts library.list_people 
end
def create_person(library)
  print "Name: "
  name =gets.chomp

  person = Person.new(name: name)

  library.add_person(person)

end
def list_books(library)
  puts library.list_books
  
end
def create_book(library)
  print "Title:"
  title = gets.chomp

  print "Genre: "
  genre = gets.chomp

   
  book = Book.new(title: title, genre: genre) 
  #create book
  

  library.add_book(book) #giving library book
end


def menu
  puts 'clear'
  puts "****Hard Copy Rental - Code Library***"

  puts
  puts
  puts "1. Create Book"
  puts "2. Create Person"
  puts "3. Lists all Books "
  puts "4. List all people"
  puts "5. Lend books "
  puts "6. Return Book"
  puts "7. List Borrowed Book"
  puts 
  puts "0. Quit"
  puts
  print "-->"
  gets.to_i
  
end