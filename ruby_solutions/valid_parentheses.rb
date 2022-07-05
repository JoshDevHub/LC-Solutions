# frozen_string_literal: true

def valid_parentheses(string)
  stack = []
  matching_pairs = { "(" => ")", "[" => "]", "{" => "}" }
  string.each_char do |char|
    if matching_pairs.key?(char)
      stack.push(char)
    else
      opening_paren = stack.pop
      return false unless matching_pairs[opening_paren] == char
    end
  end
  stack.empty?
end
