#class for Model1 goes here
#Feel free to change the name of the class
class Doctor

    attr_reader :name
    @@all = []
    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def new_appointment(date,patient)
        Appointment.new(date,patient,self)
    end

    def appointments
        Appointment.all.select{|appointment_info|appointment_info.doctor==self}
    end

    def patients
        self.appointments.map{|appointment_info|appointment_info.patient}
    end

end
