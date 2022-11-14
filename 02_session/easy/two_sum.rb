# frozen_string_literal: true

# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer[]}
def two_sum(nums, target)
  diff_map = {}
  nums.each_with_index do |n, i|
    diff = target - n
    return [diff_map[diff], i] if diff_map.key?(diff)

    diff_map[n] = i
  end
end

# 5min

# NOTES
# algo/structure: hashmap, array
# time: O(n)
# space: O(n)

# Use hashmap to cache values and avoid nested looping in O(n^2) time
