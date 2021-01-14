## One to Many Relationships
---

### LGs:

* REVIEW
* Implement one object to many objects relationship
  * One object _has many_ objects
  * One object _belongs to_ another object
* Demonstrate the concept of an Entity Relationship Diagram (ERD, domain model)
* Practice passing custom objects as arguments to methods
* Demonstrate Single Source of Truth
* Infer type of method (class or instance) through naming conventions

### Review

* Quick review of OOP:
  * we created classes
  * we created instances of classes using `initialize`
  * we created instance and class methods
  * we used `attr_` macros for getters and setters
  * we looked at `self`

### Questions
- `attr_` macros: why reader and not accessor
  - `attr_reader`: allows us to read/see data and not to change it
  - `attr_accessor`: allows us to read/see data and to change it
  - `attr_reader :name` -> this is actually a method! `attr_reader(:name, :breed)`
- explicit vs implicit `self` 
  - `self` -> subject of the sentence OR what a method is called on OR whose attributes are gonna matter within a method OR "object of the class" (if it's Dog -> it's the new Dog)
    - Maybe methods are like Genies. The Genie can do all sorts of things for you. But who called the Genie? If Aladdin rubbed the lamp (aka 'called a method') then Aladdin is "self" right now. But when Jafar rubs the lamp (calls a method), then that method is *his* genie now.  Jafar is "self". So who is the one calling the genie (who is the one invoking this method)? That's self. => Zak 
  
```
  def bark
    puts "#{name} is barking now"
  end
```
  - when using writer method (when trying to overwrite some data) -> use explicit self, e.g. `self.age = 5`
  - in all the other cases, rely on Ruby's method lookup chain feature, i.e. `name` would already give us the name


<!-- ```ruby

  def bark
    name = "fafik" #-> another dog's name
    puts "#{self.name}   
  end
``` -->

- How do I recognize a class variable? How do I recognize an instance variable?
  - class var: `@@` -> storage room for the entire class; usually you will store the instances;
  - instance var: `@` -> will be carried around with the instance; you should withdraw the data through corresponding methods!
  - regular var: locally-scoped! works inside a method!
- `$global_var` -> available everywhere, usually to store stuff, not to add stuff


### Define

What do the following mean in plain English? What do they mean in programming?

* Model
  - replica of something bigger
  - framework to view relationships 
  - A representation of what something should be
  - Blueprint / template <- in Ruby, model is a template for Ruby to create instances
* Domain
  - urls and hosting 
  - myspace! twitter, youtube
  - confined space 
  - Something that encompasses other things
  - Scope/limit

youtube
- video, user, comment
  - user has many videos; one video belongs to a user
  - user has many comments; one comment belongs to a user

twitter
- tweet, user
  - user has many tweets; one tweet belongs to a user

* Relationships / associations
  * One to many relationship
    - user has many videos; one video belongs to a user
    - user has many comments; one comment belongs to a user
    - user has many tweets; one tweet belongs to a user
    - A house has many windows, but each window only belongs to one house. 
    - A body has many cells, but each cell only belongs to one body. 
    - A grade school teacher has many students, but each grade school student has only one teacher. 
    - A shopping cart has many items, but each item belongs to one shopping cart
    - A person has many roles, a role belongs to that person
    - I have many pairs of shoeseach pair belongs to one owner
    - A store has many aisles one aisle belongs to the store
    - An auditorium has many audience members, and an audience member belongs to a ticket
    - A plant has many leaves and the leaf belongs to one plant
  * many-to-many
    - A high school teacher has many students, and each high schooler has many teachers.

**How to think about relationships**

1. For every one (x), how many (y)? 
2. For every one (y), how many (x)?

_Why do we care so much about codifying and being really specific about the terminology of has-many/belongs-to?_ The terms are very powerful because we can use the same idea to describe relationships across many different types of domains. The relationship between artist and song, is the same as book and author, user and tweets, etc.

* Domain modeling
* Single Source of Truth
  * How can we start thinking about the data in our models?

### Deliverables

- [ ] Create a User class. The class should have these methods:
  - [x] `User#initialize` takes a username and a bio
  - [x] `User#username` returns a string for the username. _Should not_ be able to change after the user is created.
  - [x] `User#bio` returns a short biography for the user. _Should_ be able to change after the user is created.
  - [ ] `User#tweets` returns an array of Tweet instances
  - [ ] `User#post_tweet` takes a message, creates a new tweet, and adds it to the user's tweet collection
  - [ ] *bonus* `User.most_tweets` returns the instance of the user who has made the most tweets

- [ ] Create a Tweet class. The class should have these methods:
  - [x] `Tweet#message` returns a string
  - [x] `Tweet#user` returns an instance of the user class
  - [x] `Tweet.all` returns all the Tweets created.
  - [x] `Tweet#username` returns the username of the tweet's user

### Discussion Questions

- What is a one-many-relationship? How would we draw that in an ERD?
- What does Single Source of Truth mean?
- What is a model? Domain? Domain model?
- What is the relationship between a class and an instance?
