#shift a string's charaters by the amount specified

def generate_alphabet
    ('a'..'z').to_a + ('A'..'Z').to_a
end


ALPHABET = generate_alphabet

def ceasar_cipher(phrase, num)
   phrase_array = phrase.split("")
   phrase_array.each_with_index do |letter, letter_index|
        index = ALPHABET.find_index(letter)
        if index == nil
            next
        elsif index + num > 52 && index < 52
            phrase_array[letter_index] = ALPHABET[index + num - 26]
        elsif index + num > 26 && index < 26
            phrase_array[letter_index] = ALPHABET[index + num - 26]
            #p letter
        else
            phrase_array[letter_index] = ALPHABET[index + num]
            
        end
        
   end
   puts phrase_array.join
end

ceasar_cipher("This phrase is shifted by 5!", 5)