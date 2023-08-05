require_relative 'person'

class Student < Person
  attr_accessor :classroom

  def initialize(age = 0, name = 'Unknown', parent_permission: true, classroom: nil)
    super(name, age, parent_permission: parent_permission)
    @classroom = nil
    self.classroom = classroom if classroom
  end

  def play_hooky
    '¯\\(ツ)/¯'
  end

  def enroll_in_classroom(classroom)
    @classroom = classroom
    classroom.add_student(self)
  end
end
