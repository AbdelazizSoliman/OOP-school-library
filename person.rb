require_relative 'nameable'
require_relative 'capitalize_decoder'
require_relative 'trimmer_deocrator'

class Person
  attr_accessor :name, :age
  attr_reader :id

  def initialize(age, name: 'unknown', parent_permission: true)
    @id = id
    @name = name
    @age = age
    @parent_permission = parent_permission
  end

  def correct_name
    @name
  end

  def can_use_services?
    of_age? || @parent_permission
  end

  private

  def of_age?
    @age >= 18
  end
end
