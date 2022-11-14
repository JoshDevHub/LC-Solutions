# frozen_string_literal: true

# using builtin
def search(nums, target)
  nums.bsearch_index { |num| target <=> num } || -1
end

# hand-rolled bsearch
def hand_made_search(nums, target)
  lo = 0
  hi = nums.length - 1

  while lo <= hi
    mid_idx = (lo + ((hi - lo) / 2)).floor
    mid_element = nums[mid_idx]
    return mid_idx if mid_element == target

    if mid_element < target
      lo = mid_idx + 1
    else
      hi = mid_idx - 1
    end
  end
  -1
end
