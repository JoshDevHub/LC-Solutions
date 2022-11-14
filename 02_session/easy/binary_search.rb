# frozen_string_literal: true

# using builtin

# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer}
def search(nums, target)
  nums.bsearch_index { |n| target <=> n } || -1
end

# written manually
def man_search(nums, target)
  left = 0
  right = nums.length - 1

  while left <= right
    midpoint = (left + right) / 2
    element = nums[midpoint]
    return midpoint if element == target

    if element > target
      left = midpoint + 1
    else
      right = midpoint - 1
    end
  end
  -1
end

# NOTES
# algo/structure: array, binary search (duh)
# time: O(log n)
# space: O(1)

# can make use of ruby builtin. good to know how it works manually
