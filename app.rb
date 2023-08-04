require_relative 'book'
require_relative 'person'

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