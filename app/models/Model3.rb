#class for Model3 goes here
#Feel free to change the name of the class
require 'pry'

class Teacher


    attr_accessor :name, :subject

    @@all=[]

    # name
    # subject
    def initialize(name, subject)
        @name=name
        @subject=subject
        @@all << self
    end

    def self.all
        @@all
    end

    def get_students
       Classroom.all.map do |retrieve_students|
            retrieve_students.students
            end
          #  binding.pry
              end

      def pass_students(current_student)
       get_students.each do |index|
           if index==current_student
            index.grade="passed"
           # binding.pry
           end
         #   binding.pry
        end
         end   

         
      def fail_students(current_student)
        get_students.each do |index|
            if index==current_student
             index.grade="fail"
            # binding.pry
            end
          #   binding.pry
         end
          end 
        


end
