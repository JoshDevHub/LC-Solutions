# frozen_string_literal: true

require "set"

# given class
class ListNode
  attr_accessor :val, :next

  def initialize(val)
    @val = val
    @next = nil
  end
end

def cycle?(head)
  return false if head.nil?

  set = Set.new
  current_node = head
  until current_node.nil?
    return true if set.include?(current_node)

    set << current_node
    current_node = current_node.next
  end
  false
end

# two pointer
def two_pointer_cycle?(head)
  return false if head.nil?

  slow_pointer = head
  fast_pointer = head
  until fast_pointer.nil?
    fast_pointer = fast_pointer.next&.next
    return false if fast_pointer.nil?

    slow_pointer = slow_pointer.next
    return true if fast_pointer == slow_pointer
  end
  false
end
