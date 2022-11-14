# frozen_string_literal: true

def product_except_self(nums)
  case nums.count(0)
  when 1
    no_zero_product = nums.reject(&:zero?).reduce(:*)
    nums.map { |n| n.zero? ? no_zero_product : 0 }
  when (2..)
    [0] * nums.size
  else
    product = nums.reduce(:*)
    nums.map { |n| product / n }
  end
end
