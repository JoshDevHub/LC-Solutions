# frozen_string_literal: true

# @param {Integer[]} numbers
# @param {Integer} target
# @return {Integer[]}
# naive
def two_sum(numbers, target)
  (0...numbers.length).each do |i|
    search_diff = target - numbers[i]
    left = i + 1
    right = numbers.length - 1
    while left <= right
      mid = (left + right) / 2
      puts mid
      return [i + 1, mid + 1] if numbers[mid] == search_diff

      if numbers[mid] > search_diff
        right = mid - 1
      else
        left = mid + 1
      end
    end
  end
end

# better
def two_sum_sorted(numbers, target)
  left = 0
  right = numbers.length - 1

  while left < right
    curr_sum = numbers[left] + numbers[right]
    return [left + 1, right + 1] if curr_sum == target

    if curr_sum > target
      right -= 1
    else
      left += 1
    end
  end
end

# 10min
