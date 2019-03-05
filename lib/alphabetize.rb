require 'pry'
ESPERANTO_ALPHABET = "abcĉdefgĝhĥijĵklmnoprsŝtuŭvz "

def alphabetize(arr)
  encoded_array = []
  return_array = []
  index = 0

  arr.each do |word|
    encoded_array[index] = encode(word)
    index += 1
  end
  binding.pry
  encoded_array.sort{ |a, b| a <=> b}
  binding.pry
  encoded_array.each do |encoded_word|
    binding.pry
    decoded_array = decode(encoded_word)
  end

  decoded_array
end

def encode(word)
  word_array = []
  for letter in 0..(word.length - 1)
    word_array.push(ESPERANTO_ALPHABET.index(word[letter]))
  end
  word_array
end

def decode(word)
  decoded_array = []
  for letter in 0..(word.length - 1)
    decoded_array.push(ESPERANTO_ALPHABET[word[letter]])
  end
  decoded_array.join
end
