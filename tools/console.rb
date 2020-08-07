require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end



teacher1=Teacher.new("Mr.John", "history")
teacher2=Teacher.new("Miss.Tropila", "computer science")
 teacher3=Teacher.new("Miss.Kibbe", "art")

student1=Student.new("Tim")
 student2=Student.new("Kamil")
 student3=Student.new("Xiorro")

 class1=Classroom.new("History 101", teacher1, "history", student1)
 class4=Classroom.new("History 201", teacher1, "history", student3)
 class2=Classroom.new("CS 101", teacher2, "computer science", student2)
 class5=Classroom.new("CS 101", teacher2, "computer science", student2)
 class3=Classroom.new("Art 101", teacher3, "art", student3)


teacher1.get_students
teacher1.pass_students(student3)
student3


teacher1.pass_students(student2)
student2

teacher2.fail_students(student1)
student1


student2.drop_class(class2)
student2

student2.drop_class(class5)
student2


binding.pry
0 #leave this here to ensure binding.pry isn't the last line
