# frozen_string_literal: true

# @param {String} a
# @param {String} b
# @return {String}
def add_binary(a, b)
  carry = 0

  a_pointer = a.length - 1
  b_pointer = b.length - 1

  binary_sum = +""

  while a_pointer >= 0 || b_pointer >= 0
    a_digit = a_pointer >= 0 ? a[a_pointer].to_i : 0
    b_digit = b_pointer >= 0 ? b[b_pointer].to_i : 0

    col_sum = a_digit + b_digit + carry
    digit = col_sum % 2
    carry = col_sum >= 2 ? 1 : 0

    binary_sum = digit.to_s + binary_sum

    a_pointer -= 1
    b_pointer -= 1
  end
  "#{carry.zero? ? '' : carry}#{binary_sum}"
end

# non-algorithmic solution
def add_binary_easy(a, b)
  (a.to_i(2) + b.to_i(2)).to_s(2)
end

# 30min

# NOTES
# algo/structure: strings, bits
# time: O(max(n, m))
# space: O(1)

# annoying problem if you don't have good understanding of binary addition
