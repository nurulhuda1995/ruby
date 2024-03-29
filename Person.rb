=begin
This is a Ruby practice
=end
class Person
  attr_accessor :firstName, :secondName

  def initialize(firstName, secondName)
    @firstName = firstName
    @secondName = secondName
  end

end

class Allocation < Person
  attr_accessor :department  
  def initialize(department, firstName, secondName)
    @department = department
    super(firstName,secondName)
  end
end

p = Allocation.new('DTC','Nurul','huda')
name = p.firstName + p.secondName
puts "Welcome #{name} from #{p.department}!"
