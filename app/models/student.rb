#class for Model3 goes here
#Feel free to change the name of the class
class Student
  
@@all = []

attr_accessor :name, :grade

def initialize(name_arg, grade_arg)
    @name = name_arg
    @grade = grade_arg
    @@all<<self
end

def self.all
    @all
end


def all_my_classes
    ClassRoom.all.select {|course| course.students.include?(self)}
end

def all_my_teachers
    array_of_teachers = all_my_classes.map {|course| course.teacher}
  #same students might appear more than once depending on courses
  array_of_teachers.flatten.uniq
end

def open_classes
    all.select {|course| course.roster_status == "open"}
end

def available_classes
    open_classes.select {|course| course.students.exclude?(self)
end

def enroll(class_inst)
    class_inst.add_student(self)
end