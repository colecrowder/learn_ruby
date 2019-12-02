#write your code here
def translate(string)
    vowels = ["a", "e", "i", "o", "u"]
    pigPhrase = string.split(" ").map {|word|
        if vowels.include?(word[0])
            word + "ay"
        elsif word[0,2] == "qu"
            phoneme = word.slice!(0,2)
            word = word + phoneme + "ay"
        elsif word[0,3] == "squ"
            phoneme = word.slice!(0,3)
            word = word + phoneme + "ay"
        elsif vowels.include?(word[1])
            letter = word.slice!(0)
            word = word + letter + "ay"
        elsif vowels.include?(word[2])
            letters = word.slice!(0,2)
            word = word + letters + "ay"
        else
            letters = word.slice!(0,3)
            word = word + letters + "ay"
        end
    }.join(" ")
    pigPhrase
end