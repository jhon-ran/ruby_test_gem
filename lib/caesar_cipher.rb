# Caesar cipher

def caesar_cipher(word, key)
  array_of_words = word.split('')
  new_string = ""
  array_of_words.each { |x| 
    x = x.ord + key
    if x >= 122
      convert = x - 26
      decipher = convert.chr
      return decipher
    elsif x >= 90 && x < 97
      convert = x - 26
      decipher = convert.chr
      return decipher
    else
      decipher = x.chr
      new_string = new_string + decipher
    end
    
  }
  return new_string
  
end