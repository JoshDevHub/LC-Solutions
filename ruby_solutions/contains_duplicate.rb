# frozen_string_literal: true

require "set"

def contains_duplicate?(nums)
  set = Set.new
  nums.each do |num|
    return true if set.include?(num)

    set.add(num)
  end
  false
end
