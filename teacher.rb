require_relative 'person'

class Teacher < Person
  attr_reader :specialization

  def initialize(age, name, specialization, parent_permission: true)
    super(name, age, parent_permission: parent_permission)
    @specialization = specialization
  end

  def can_use_services?
    true
  end
end
