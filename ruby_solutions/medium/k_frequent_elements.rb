# frozen_string_literal: true

def top_k_frequent(nums, k)
  freq_map = Hash.new(0)
  nums.each do |n|
    freq_map[n] += 1
  end
  freq_map.max_by(k) { |_, v| v }.map(&:first)
end
