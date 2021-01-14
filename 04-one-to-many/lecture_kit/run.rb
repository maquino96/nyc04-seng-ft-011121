require 'pry'
require_relative 'models/user'
require_relative 'models/tweet'

#### USERS
# username, bio
coffee_dad = User.new("coffee dad", "just a dad who loves coffee")
tea_dad = User.new("Chaser", "I love tea! talk to me about my tea selection!")

#### TWEETS
# DO NOT PASS STRINGS! PASS AN INSTANCE!
# tweet1 = Tweet.new("time for a coffee#", "coffee dad")

tweet1 = Tweet.new("time for a coffee#", coffee_dad)
tweet3 = Tweet.new("cfeeeee", coffee_dad)

tweet2 = Tweet.new("yay! new order of teaaaa", tea_dad)


binding.pry
"coffee!"