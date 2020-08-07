#class for Model1 goes here
#Feel free to change the name of the class

require 'pry'
class Classroom

    # name
    # teacher
    # subject
    # students

    @@all=[]

    attr_accessor :name, :teacher, :subject, :students

    def initialize(name, teacher, subject, students)
        @name=name
        @teacher=teacher
        @subject=subject
        @students=students
        @@all << self
    end

    def self.all
        @@all
    end

    



end
