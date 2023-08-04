require_relative 'book'

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