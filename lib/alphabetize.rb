require 'pry'
ESPERANTO_ALPHABET = "abcĉdefgĝhĥijĵklmnoprsŝtuŭvz "

def alphabetize(arr)
  arr.sort{ |word1, word2| encode(word1) <=> encode(word2)}
end

def encode(word)
  word_array = []
  for letter in 0..(word.length - 1)
    word_array.push(ESPERANTO_ALPHABET.index(word[i]))
  end
end
