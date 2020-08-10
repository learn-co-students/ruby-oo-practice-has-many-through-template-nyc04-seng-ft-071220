#class for Model3 goes here
#Feel free to change the name of the class
class Appointment

    attr_reader :doctor, :patient, :date
    @@all = []
    def initialize(date,patient,doctor)
        @date = date
        @patient = patient
        @doctor = doctor
        @@all << self
    end

    def self.all
        @@all
    end

    def appointments_date
        self.all.map{|appointments_info|appointments_info.date}
    end

    def doctors
        self.all.map{|appointments_info|appointments_info.doctor}
    end

    def patients
        self.all.map{|appointments_info|appointments_info.patients}
    end

end