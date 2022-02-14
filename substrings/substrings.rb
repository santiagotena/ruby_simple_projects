def substrings(words, dictionary)
    
    #Setup
    words = words.downcase
    word_count = {}
    count = 0

    #Logic
    dictionary.each do |item|

        matches = words.scan(item).count
        if matches == 0
            next
        end
        word_count[item] = matches
        
    end

    #Output
    puts word_count
end

#Tests
dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

#Test 1
substrings("below", dictionary)
#Test 2
substrings("Howdy partner, sit down! How's it going?", dictionary)