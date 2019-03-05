require 'pry'
ESPERANTO_ALPHABET = "abcĉdefgĝhĥijĵklmnoprsŝtuŭvz "

def alphabetize(arr)
  encoded_array = []
  return_array = []
  index = 0

  # encode each word in arr to an array of integers based on their index in
  # the string ESPERANTO_ALPHABET
  arr.each do |word|
    encoded_array[index] = encode(word)
    index += 1
  end

  # sort the encodeed array
  encoded_array = encoded_array.sort

  # decode each "word" in the sorted encoded array and push it into the
  # return_array
  encoded_array.each do |encoded_word|
    return_array.push(decode(encoded_word))
  end
  return_array
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
