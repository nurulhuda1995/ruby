=begin
This is a Ruby practice
=end
$degree = "Business"
class Student
  @@address = ''

  def initialize
    @firstName = ''
    @secondName = ''
  end

  def self.address
    @@address = ''
  end

  def printName
    puts "What is your first name?"
    @firstName = gets.chomp
    puts "What is your second name?"
    @secondName = gets.chomp
    @name = @firstName + "" + @secondName
  end

  def printAdd
    puts "What is your address?"
    @@address = gets.chomp
  end

  def printDeg
    puts "What is your degree?"
    $degree = gets.chomp
  end

  def printMain
    printName
    printAdd
    printDeg
    puts "New contact: #{@name}, #{@@address}, #{$degree} "
  end

end

s = Student.new
s.printMain