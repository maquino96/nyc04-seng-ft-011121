class Tweet

   @@all = []

   attr_reader :message, :user

   def initialize(message, user_instance)
      @message = message
      @user = user_instance
      @@all << self
   end

   def self.all
      @@all
   end

   def username
      user.username
   end

end

#recipe for .all method:
# 1. declare an @@all = []
# 2. push a newly-created instance into @@all
# 3. write the method
