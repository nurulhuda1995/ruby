class GradeList
# private methods are for internal usage within the defining class
  def gradeInputter(subject)
    print "Please input your grade for #{subject}: "
  end
  private 
  def gradeLooper(english = '', maths = '', science = '')
    grades = {"english" => english, "maths" => maths, "science" => science}
    puts "Your grades have been saved into the system:"
    for key in grades.keys()
      puts "#{key} = #{grades[key]}"
    end
  end 
end

you = GradeList.new 
you.gradeInputter("English")
eng = gets.chomp
you.gradeInputter("Math")
math = gets.chomp
you.gradeInputter("Science")
sci = gets.chomp
you.send(:gradeLooper, eng, math, sci)
