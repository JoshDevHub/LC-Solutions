# frozen_string_literal: true

require "set"

def length_of_longest_substring(string)
  char_set = Set.new
  left_pointer = 0
  max_length = 0
  string.each_char.with_index do |char, index|
    while char_set.include?(char)
      char_set.delete(string[left_pointer])
      left_pointer += 1
    end
    char_set.add(char)
    max_length = [max_length, index - left_pointer + 1].max
  end
  max_length
end
