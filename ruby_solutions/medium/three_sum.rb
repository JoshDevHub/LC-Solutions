# frozen_string_literal: true

def three_sum(nums)
  nums.sort!

  triplets = []
  nums.each_with_index do |curr_num, i|
    next if i.positive? && curr_num == nums[i - 1]

    left = i + 1
    right = nums.size - 1

    while left < right
      curr_sum = curr_num + nums[left] + nums[right]
      left, right = analyze_sum(curr_sum:, left:, right:, nums:, triplets:)
      if curr_sum.zero?
        triplets << [curr_num, nums[left], nums[right]]
        left += 1
        left += 1 while nums[left] == nums[left - 1] && left < right
      elsif curr_sum.negative?
        left += 1
      else
        right -= 1
      end
    end
  end
  triplets
end
