# frozen_string_literal: true

# @param {Integer[]} nums
# @return {Integer}
def max_sub_array(nums)
  curr_sum = 0
  max_sum = nums[0]

  nums.each do |n|
    curr_sum = [n, curr_sum + n].max
    max_sum = [max_sum, curr_sum].max
  end
  max_sum
end

# 15min

# NOTES
# algo/structure: dp, array
# time: O(n)
# space: O(1)

# Kadane's algorithm
