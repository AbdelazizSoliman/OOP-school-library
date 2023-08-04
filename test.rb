require_relative 'person'
require_relative 'classroom'
require_relative 'student'
require_relative 'book'
require_relative 'rental'
require_relative 'capitalize_decorator'
require_relative 'trimmer_decorator'

person = Person.new(22, 'maximilianus')
puts person.correct_name
capitalized_person = CapitalizeDecorator.new(person)
puts capitalized_person.correct_name
capitalized_trimmed_person = TrimmerDecorator.new(capitalized_person)
puts capitalized_trimmed_person.correct_name

math_class = Classroom.new('Math')
student1 = Student.new(math_class, 16, 'Alice', parent_permission: true)
english_class = Classroom.new('English')
student2 = Student.new(english_class, 16, 'Alice', parent_permission: true)
math_class.add_student(student1)
english_class.add_student(student2)
puts math_class.students.inspect
puts english_class.students

book = Book.new('Book 1', 'Author 1')
person2 = Person.new(16, 'Alice', parent_permission: true)
Rental.new('2023-07-26', book, person2)

puts book.rentals
puts person2.rentals.inspect
