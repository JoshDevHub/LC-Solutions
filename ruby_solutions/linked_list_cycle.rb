# frozen_string_literal: true

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

  map = {}
  current_node = head
  until current_node.nil?
    return true if map.key?(current_node)

    map[current_node] = true
    current_node = current_node.next
  end
  false
end
