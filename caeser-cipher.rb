#shift a string's charaters by the amount specified

def generate_alphabet
    ('a'..'z').to_a
end

ALPHABET = generate_alphabet

def ceaser_cipher(phrase, num)
   phrase_array = phrase.split("")
   phrase_array.each do |letter|
        index = ALPHABET.find_index(letter)
        if index == nil
            next
        elsif index + num > 26
            letter = ALPHABET[index + num - 26]
            p letter
        else
            letter = ALPHABET[index + num]
            
        end
        p letter
   end
   #p phrase_array
end

ceaser_cipher("What a string!", 5)