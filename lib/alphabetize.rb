require 'pry'
ESPERANTO_ALPHABET = "abcĉdefgĝhĥijĵklmnoprsŝtuŭvz "

def alphabetize(arr)
  encoded_array = []
  arr.each do |word|
    encoded_array = encode(word)
  end
  encoded_array.sort{ |a, b| a <=> b}
end

def encode(word)
  word_array = []
  for letter in 0..(word.length - 1)
    word_array.push(ESPERANTO_ALPHABET.index(word[letter]))
  end
  word_array
end
