# frozen_string_literal: true

require "set"

# @param {Integer[]} nums
# @return {Boolean}
def contains_duplicate(nums)
  seen_set = Set.new
  nums.each do |num|
    return true if seen_set.include?(num)

    seen_set << num
  end
  false
end

# 5min

# NOTES
# algo/structure: array, set
# time: O(n)
# space: O(n)

# Use set to cache seen data. Pretty standard problem.
