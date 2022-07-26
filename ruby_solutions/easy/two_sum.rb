# frozen_string_literal: true

def two_sum(nums, target)
  nums.each_with_index.each_with_object({}) do |(number, index), map|
    difference = target - number
    return [map[difference], index] if map.key?(difference)

    map[number] = index
  end
end

p two_sum([3, 3], 6)
