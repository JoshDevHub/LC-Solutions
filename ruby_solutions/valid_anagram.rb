# frozen_string_literal: true

def anagram?(string, other)
  string.each_char.tally == other.each_char.tally
end
