# frozen_string_literal: true

# Sort solution
def majority_element(nums)
  midpoint = nums.size
  nums.sort![midpoint]
end

# Boyer-Moore Voting Algorithm
def majority_element_vote(nums)
  candidate = nums[0]
  nums.reduce(0) do |vote_total, num|
    candidate = num if vote_total.zero?
    vote_total + (num == candidate ? 1 : -1)
  end
  candidate
end
