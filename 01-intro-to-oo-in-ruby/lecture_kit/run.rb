require 'pry'

# monkey-patching || extending a class

class String

    # def reverse
    #     "meow"
    # end

    def excited
        # binding.pry
        self.upcase + "!!!"
    end

    def titleize
        short_words_arr = %w{a an and as at but by for if in of on or the to via vs vs.}
        # this is the same as:
        # short_words_arr = ["a", "an",]
        # binding.pry

        title = split.map do |word|
            # lines 18-22 could be refactored using ternaries:
            ## short_words_arr.include?(word) ? word : word.capitalize
            # or one-liner if/unless statement, in which case we need to return the word:
            ## word.capitalize! unless short_words_arr.include?(word)
            ## word
            if short_words_arr.include?(word)
                word
            else 
                word.capitalize
            end
        end
        title.join(" ")
    end
end













# dog1 = {"name": "ruby", "breed": "maltese"}
# dog2 = {"namne": "sora", "breed": "lab-pit"}
# dog3 = {"name": "lilo", "breed": "daschund"}

# dogs_arr = [dog1, dog2, dog3]

class Dog

    def bark
        binding.pry
        puts "woof"
        "woof"
    end

end

sora = Dog.new
# sora.bark

binding.pry
"DONE!"