class User

    attr_reader :username
    attr_accessor :bio
    
    def initialize(username, bio)
        @username = username
        @bio = bio
    end

    def tweets
        Tweet.all.select{|tweet| tweet.user == self}
        # Tweet.all.find -> an instance 
        # Tweet.all.select -> an array
    end

    def post_tweet(message)
        # what class am i in? what kind of method am i in? if an instance method, SELF will be an INSTANCE
        Tweet.new(message, self)
    end
end

# recipe for starting a class:
#  - write a class
#  - write an initialize method
#  - add the pars
#  - declare the instance vars
#  - add attr_ macros

# - [ ] `User#tweets` returns an array of Tweet instances
# - [ ] `User#post_tweet` takes a message, creates a new tweet, and adds it to the user's tweet collection
# - [ ] *bonus* `User.most_tweets` returns the instance of the user who has made the most tweets