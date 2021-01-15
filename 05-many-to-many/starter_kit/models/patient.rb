class Patient
    
    @@all = []
    
    def initialize(name, birth_year, doctor)
        @name = name
        @birth_year = birth_year 
        @doctor = doctor 
        @@all << self
        # self.class.all 
    end
    
    attr_reader :name, :birth_year
    
    def self.all
        @@all 
    end 
    
    
    end