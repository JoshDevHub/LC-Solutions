# frozen_string_literal: true

def max_sub_array(nums)
  running_total = nums.first

  nums.reduce do |max_sum, num|
    running_total = [num, running_total + num].max
    [max_sum, running_total].max
  end
end
