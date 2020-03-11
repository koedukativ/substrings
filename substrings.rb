
def substrings(input, matrix)
    input = input.split
    frequencies = Hash.new(0)
    input.each { |word| 
      matrix.each { |phrase|
        if word.include? phrase
          frequencies[phrase] +=1
        else
          next matrix
        end
      }
    }  
    frequencies.each { |word, frequency| puts word + " " + frequency.to_s }
  end
  
  dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]