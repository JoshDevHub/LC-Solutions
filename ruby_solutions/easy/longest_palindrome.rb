# frozen_string_literal: true

def longest_palindrome(s)
  odd_letter_count = s.chars.tally.count { |_l, count| count.odd? }
  odd_letter_count.zero? ? s.length : s.length - odd_letter_count + 1
end
