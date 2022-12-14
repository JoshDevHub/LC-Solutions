# frozen_string_literal: true

TARGET = 0

def three_sum(nums)
  nums.sort!

  results = []
  nums.each_with_index do |n, i|
    next if i.positive? && n == nums[i - 1]

    left = i + 1
    right = nums.length - 1

    while left < right
      curr_sum = n + nums[left] + nums[right]
      if curr_sum.positive?
        right -= 1
      elsif curr_sum.negative?
        left += 1
      else
        results << [n, nums[left], nums[right]]
        left += 1
        left += 1 while nums[left] == nums[left - 1] && left < right
      end
    end
  end
  results
end

# 10min

# NOTES
# algo/structure: arrays, binary search
# time: O(nlogn)
# space: O(1)

# Helps to understand sorted 2Sum for this problem in my opinion
