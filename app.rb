require_relative 'book'
require_relative 'person'
require_relative 'teacher'
require_relative 'student'

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