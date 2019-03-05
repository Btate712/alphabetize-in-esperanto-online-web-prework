require 'pry'
ESPERANTO_ALPHABET = "abcĉdefgĝhĥijĵklmnoprsŝtuŭvz"

def alphabetize(arr)
  longest = 0
  arr.sort { |a, b| do
    if a.length > b.length
      longest = a.length
    else
      longest = b.length
    end
    for i in 0..longest
      if ESPERANTO_ALPHABET.index(a[i]) > ESPERANTO_ALPHABET.index(b[i])
        return 1
      elsif ESPERANTO_ALPHABET.index(b[i]) < ESPERANTO_ALPHABET.index(a[i])
        return -1
      end
    end
    return 0
  end }
end
