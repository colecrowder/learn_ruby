#write your code here
def echo(string)
    string
end
def shout(string)
    string.upcase
end
def repeat(string, number = 2)
    newString = (string + " ") * number
    newString.chomp(" ")
end
def start_of_word(string, number)
    string[0, number]
end
def first_word(string)
    array = string.split(" ")
    array[0]
end
def titleize(str)
    str.capitalize!  # capitalize the first word in case it is part of the no words array
    words_no_cap = ["and", "or", "the", "over", "to", "the", "a", "but"]
    phrase = str.split(" ").map {|word| 
        if words_no_cap.include?(word) 
            word
        else
            word.capitalize
        end
    }.join(" ") # I replaced the "end" in "end.join(" ") with "}" because it wasn't working in Ruby 2.1.1
  phrase  # returns the phrase with all the excluded words
end
