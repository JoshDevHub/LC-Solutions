# frozen_string_literal: true

class MyQueue
  def initialize
    @first = []
    @second = []
  end

  # type x: Integer
  # :rtype: Void
  def push(x)
    @first.push(x)
  end

  # :rtype: Integer
  def pop
    transfer if @second.empty?
    @second.pop
  end

  # :rtype: Integer
  def peek
    transfer if @second.empty?
    @second[-1]
  end

  # :rtype: Boolean
  def empty
    @first.empty? && @second.empty?
  end

  private

  def transfer
    @second << @first.pop until @first.empty?
  end
end

# 10min

# NOTES
# algo/structure: stacks, queues
# time:
#   push:  O(1)
#   pop:   O(n) amortized
#   peek:  O(n) amortized
#   empty: O(1)
# space: O(1)

# peek and pop are worst case O(n) but by managing the transfer between stacks,
#   in a clever way, performance can tend towards O(1) on average (hence the
#   reference to amortized complexity analysis)
