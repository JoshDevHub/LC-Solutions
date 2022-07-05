# frozen_string_literal: true

def alphanumeric?(ascii_code)
  (97..122).cover?(ascii_code) || (48..57).cover?(ascii_code)
end

def palindrome?(string)
  ascii_chars = string.chars.filter_map do |char|
    codepoint = char.downcase.ord
    codepoint if alphanumeric?(codepoint)
  end
  ascii_chars == ascii_chars.reverse
end
