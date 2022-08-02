# frozen_string_literal: true

# 15 minutes

class MinStack
  def initialize
    @stack = []
  end

  def push(val)
    prev_min = get_min
    new_min = val < prev_min ? val : prev_min
    @stack.push([val, new_min])
    nil
  end

  def pop
    val, = @stack.pop
    val
  end

  def top
    @stack[-1][0]
  end

  def get_min
    @stack.dig(-1, -1) || Float::INFINITY
  end
end
