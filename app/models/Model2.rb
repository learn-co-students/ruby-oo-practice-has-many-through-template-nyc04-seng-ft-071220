#class for Model2 goes here
#Feel free to change the name of the class

require 'pry'
class Student


    attr_accessor :name, :grade

    @@all =[] 
    
    # name
    def initialize(name)
        @name=name
        @@all << self
        @grade = "pending"
        @status= "enrolled"
    end

    def self.all
        @@all
    end


    def drop_out
        self.clear
    end

    def drop_class(class_dropping)
        Classroom.all.select do |index|
            index.students ==self && index.name == class_dropping
            @status="dropped"
     #    binding.pry
        end
    end




end
