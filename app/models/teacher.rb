#class for Model2 goes here
#Feel free to change the name of the class
class Teacher

attr_accessor :name, :subject

@@all = []

def initialize(name_arg, subject)
    @name = name_arg
    @subject = subject
    @@all<<self
end

def self.all
    @@all
end

def all_classes
    ClassRoom.all.select {|course| course.teacher == self}
end

def all_students
  array_of_students = all_classes.map {|course| course.students}
  #same students might appear more than once depending on courses
  array_of_students.flatten.uniq
end


def create_class(course_name_arg)
    ClassRoom.new(course_name_arg, self)
end