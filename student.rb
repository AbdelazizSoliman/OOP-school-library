require_relative 'person'

class Student < Person
  attr_accessor :classroom

  def initialize(classroom, age, name = 'unknown', parent_permission: true)
    super(age, name, parent_permission: parent_permission)
    @classroom = classroom
    add_to_classroom
  end

  def add_to_classroom
    @classroom.add_student(self) unless @classroom.students.include?(self)
  end

  def play_hooky
    '¯(ツ)/¯'
  end
end
