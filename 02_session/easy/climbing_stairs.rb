# frozen_string_literal: true

# @param {Integer} n
# @return {Integer}
def climb_stairs(n)
  first = 1
  second = 1

  while n > 1
    temp = second
    second = first + second
    first = temp
    n -= 1
  end
  second
end

# 5min

# NOTES
# algo/structure: fibonacci
# time: O(n)
# space: O(1)

# This problem centers on realizing that the steps grow at the rate of the
#   fibonacci sequence, after which it just becomes about writing a fibonacci.
#   For best results, avoid recursion. Even with memoization, it uses extra space
#   to compute the result. Iterative is most efficient.
