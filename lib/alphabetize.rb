require 'pry'
ESPERANTO_ALPHABET = "abcĉdefgĝhĥijĵklmnoprsŝtuŭvz"

def alphabetize(arr)
  arr.sort_by{ |word| encode_to_ascii(word)}
end

def encode_to_ascii(word)
  encoded_word = ""
  for letter in 0..(word.length - 1)
    encoded_word += (67 + ESPERANTO_ALPHABET.index(word[letter])).chr
  end
end
