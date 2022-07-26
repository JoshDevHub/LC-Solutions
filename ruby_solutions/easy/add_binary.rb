# frozen_string_literal: true

require "debug"

def add_binary_simple(a, b)
  (a.to_i(2) + b.to_i(2)).to_s(2)
end

def add_binary(a, b)
  a_end = a.length - 1
  b_end = b.length - 1

  binary_sum = ""
  carry = 0
  until a_end.negative? && b_end.negative?
    a_digit = (a_end.negative? ? 0 : a[a_end]).to_i
    b_digit = (b_end.negative? ? 0 : b[b_end]).to_i
    col_sum = a_digit + b_digit + carry
    digit = col_sum.zero? || col_sum == 2 ? "0" : "1"
    carry = col_sum >= 2 ? 1 : 0

    binary_sum = "#{digit}#{binary_sum}"
    a_end -= 1
    b_end -= 1
  end
  carry == 0 ? binary_sum : "#{carry}#{binary_sum}"
end

p add_binary('11', '1')
p add_binary("1010", "1011")
