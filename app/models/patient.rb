#class for Model2 goes here
#Feel free to change the name of the class
class Patient

    attr_reader :name
    @@all = []
    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def new_appointment(date,doctor)
        Appointment.new(date,self,doctor)
    end

    def appointments
        Appointment.all.select{|appointment_info|appointment_info.patient==self}
    end

    def doctors
        self.appointments.map{|appointment_info|appointment_info.doctor}
    end
end