# frozen_string_literal: true

# with string conversion
def palindrome?(num)
  string_rep = num.to_s
  string_rep == string_rep.reverse
end

# without string conversion
def palindrome_v2?(num)
  return false if num.negative?

  original_num = num
  reverse_num = 0
  while num.positive?
    reverse_num = (reverse_num * 10) + (num % 10)
    num /= 10
  end
  original_num == reverse_num
end
