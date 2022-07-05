# frozen_string_literal: true

def search(nums, target)
  nums.bsearch_index { |num| target <=> num } || -1
end
