#class for Model1 goes here
#Feel free to change the name of the class
class ClassRoom

@@all = []

    attr_accessor :teacher, :student, :course_name, :total_count, :roster_status, :total_num_of_students

def initialize(course_name, teacher)
    @course_name
    @teacher
    @students = []
    @total_count = 0
    @@all<self
end

def add_student(student_inst)
    @students<<student_inst
    @total_count = @students.length
end



def self.total_num_of_students
    @total_count
end

def roster_status
   num_students = total_num_of_students
   if num_students == 30
    roster_status = "full"
   elsif num_students < 30
    roster_status = "open"
   else
    roster_status = "over capacity"
   end
   roster_status
end
#roster_status == "full"  when num_of_students == 30
 #roster_status == "open" when num_of_students < 30
 #roster_status == "over-capacity" when num_of_students > 30



 


