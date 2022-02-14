def caesar_cipher(string, shift = 5)
    
    #Variables
    lowercases = ('a'..'z').to_a
    uppercases = ('A'..'Z').to_a

    string = string.split('')
    new_string = []

    #Logic
    for letter in string do
        if lowercases.include? letter
            index = lowercases.index(letter)
            new_index = index + shift
            
            if new_index >= 26
                new_index = new_index-26
            end

            new_string.push(lowercases[new_index]) 
            next
        end

        if uppercases.include? letter
            index = uppercases.index(letter)
            new_index = index + shift
            
            if new_index >= 26
                new_index = new_index-26
            end

            new_string.push(uppercases[new_index]) 
            next
        end

        new_string.push(letter)

    end

    new_string = new_string.join

    #Output
    puts new_string
    return new_string

end

string = "UVWXYZabcdef"
shift = -5

caesar_cipher(string, shift)