require 'pry'
ESPERANTO_ALPHABET = "abcĉdefgĝhĥijĵklmnoprsŝtuŭvz"

def alphabetize(arr)
  arr.sort_by{ |word| encode_to_ascii(word)}
end

def encode_to_ascii(word)
  max = 0
  for letter in 0..word.length
    max = letter
  end
  binding.pry
end
  
