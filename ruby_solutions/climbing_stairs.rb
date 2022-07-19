# frozen_string_literal: true

# iterative solution
def climb_stairs(num)
  first = 1
  second = 1
  while num > 1
    temp = second
    second += first
    first = temp
    num -= 1
  end
  second
end

# recursive w/ memo
def fibonacci(num, memo = {})
  return 0 if n.negative?

  return 1 if n == 1

  memo[num] ||= fibonacci(num - 1, memo) + fibonacci(num - 2, memo)
end

def climb_stairs_rec(num)
  fibonacci(num + 1)
end
