# frozen_string_literal: true

# @param {Integer[]} nums
# @return {Integer}
def majority_element_sort(nums)
  nums.sort!
  nums[nums.length / 2]
end

def majority_element_vote(nums)
  count = 0
  candidate = nil

  nums.each do |n|
    candidate = n if count.zero?
    count += n == candidate ? 1 : -1
  end
  candidate
end

# NOTES

# algo/structure: array, sort, boyer-moore voting algorithm
# time: [sort]:O(nlogn) [vote]:O(n)
# space: O(1)

# Getting this in O(n) time and O(1) space is a little tricky and relies on this
#   "voting" algorithm
