class Doctor
   
    @@all = []


    attr_reader :name, :specialty

    def initialize (name, specialty)
        @name = name
        @specialty = specialty
        self.class.all << self 
        @current_patients = []
    end 
    
    def self.all 
        @@all
    end 

end