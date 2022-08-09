# creating substring method

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

def substrings(phrase,dict)
    phrase_lower = phrase.downcase
    result = Hash.new(0)

    dict.each do |word|
        matches = phrase_lower.scan(word).length
        result[word] = matches unless matches == 0
    end
    
    puts result
 
end

#substrings("Howdy partner, sit down! How's it going?", dictionary)
substrings("below", dictionary)
