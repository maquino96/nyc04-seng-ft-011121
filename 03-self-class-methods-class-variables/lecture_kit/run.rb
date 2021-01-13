require 'pry'

class Dog

    # class var
    @@all = []

    # # constant
    # ALL = []

    # local_variable
    # @instance_variable
    # @@class_variable

    # attr macros create reader/writer methods under the hood
    # letting us read the breeds 
    attr_reader :breed, :number_of_legs
    # letting us read+write their fav snack and name
    attr_accessor :fav_snack, :name

    def initialize(name_parameter, fav_snack_parameter, breed_parameter)
        # binding.pry
        @name = name_parameter
        @fav_snack = fav_snack_parameter
        @breed  = breed_parameter
        @number_of_legs = 4
        # binding.pry
        @@all << self
        # binding.pry
    end

    # class methods refer to the WHOLE CLASS, or more commonly to all the instances of that class

    # to build self.all class:
    # 1. define an @@all class var
    # 2. push a newly-created instance into that var
    # 3. create a method that will return that class var

    def self.all
        @@all
    end

    # def self.most_legs
    #     @@all vs self.all
    # end

    # def to_s
    #     @name
    # end

    def run
        puts "#{name} the #{breed}running fast as the wind"
    end

    def sit
        puts "#{name} is sitting on its #{number_of_legs} legs"
    end

    def bark(barking_sound)
        # binding.pry
        puts "#{name} says: '#{barking_sound.upcase}!'"
    end

    def sleep
        puts "#{name} is sleeping: 'zzzzz' and dreaming about #{fav_snack}"
    end


    # this is an anstance method and it is described as "Dog#who_am_i"
    def who_am_i
        # self -> the instance of the dog on whom I called the method

        puts "I am #{self.name}" # -> I am Ruby | an example of explicit self, you need to use explicit self in the writer methods

        # method lookup chain
        puts "I am #{name}" # -> I am Ruby | an example of implicit self

        puts "I am #{@name}" # -> it invokes the instance variable directly -> NOT SAFE

        # puts "I am #{self.@name}" -> WRONG!!!!! syntax error, unexpected instance variable
    end

    # binding.pry
    # self => the whole class
    
    # class methods refer to the WHOLE CLASS, or more commonly to all the instances of that class
    # class methods start with self and they are described as "Dog.who_am_i"
    def self.who_am_i
        # self -> Dog class
        puts "I am #{self}"
    end

end 

ruby = Dog.new("Ruby", "bones", "maltese")
preciosa = Dog.new("Preciosa", "bacon", "corgi")
sora = Dog.new("Sora", nil , "lab-pit")

binding.pry
0

# ruby.run
preciosa.sit
# sora.sleep
ruby.bark("woof")