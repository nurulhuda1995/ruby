=begin
This is a Ruby practice
=end
class Food
  def initialize
    @arrayFruits = ['banana','apple','apple','banana','durian','pear','banana']
  end
  def fruits
    #count number of banana and pears
    fruitCount = 0
    for fruit in @arrayFruits do
      if fruit == 'apple'
        puts "Your fruit is an apple"
      elsif fruit == 'pear'
        puts "Your fruit is a pear"
      else
        puts "Your fruit is neither an apple nor pear"
      end
    end
    fruitCount = @arrayFruits.count { |fruit| fruit == 'apple' || fruit == 'pear'}
    fruitCountStatement = "#{fruitCount} apples & pears"
    
    enoughFruits = fruitCount >= 5 ? "There are #{fruitCountStatement}!" : "There are only #{fruitCountStatement}! "
    puts enoughFruits
  end
end

fTest = Food.new
fTest.fruits