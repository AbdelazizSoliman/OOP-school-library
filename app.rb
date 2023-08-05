require_relative 'book'
require_relative 'person'
require_relative 'teacher'
require_relative 'student'
require_relative 'create_person'
require_relative 'create_book'
require_relative 'rental'
require_relative 'create_rental'
require_relative 'classroom'

class App
  def initialize
    @people = []
    @books = []
    @rentals = []
  end

  def list_books
    puts 'All books:'
    if @books.empty?
      puts 'No books available.'
    else
      @books.each do |book|
        puts "Title:\"#{book.title}\", Author:#{book.author}"
      end
    end
  end

  def list_people
    if @people.empty?
      puts 'No people available.'
      return
    end

    puts 'All people:'
    @people.each do |person|
      puts "[#{person.class.name}] Name: #{person.name}, ID: #{person.id}, Age: #{person.age}"
    end
  end

  def create_person
    puts 'If you want to create a Student please press(1) or press (2) if you want to create Teacher:'
    choice = gets.chomp.to_i
    person_creator = PersonCreator.new(@people)
    case choice
    when 1
      person_creator.create_student
    when 2
      person_creator.create_teacher
    end
  end

  def create_book
    book_creator = BookCreator.new(@books)
    book_creator.create_book
  end

  def create_rental
    rental_creator = RentalCreator.new(@books, @people, @rentals)
    rental_creator.create_rental
  end

  def list_all_rentals_by_person_id
    person_id = read_person_id_from_user_input
    person = find_person_by_id(person_id)

    return unless person

    rentals = get_rentals_by_person(person)

    if rentals.empty?
      puts "#{person.name} (id: #{person.id}) has no rentals."
    else
      puts "All rentals for #{person.name} (id: #{person.id}):"
      print_rentals(rentals)
    end
  end

  def read_person_id_from_user_input
    print 'Person id: '
    gets.chomp.to_i
  end

  def find_person_by_id(id); end

  def get_rentals_by_person(person)
    @rentals.select { |r| r.person == person }
  end

  def print_rentals(rentals); end
end
