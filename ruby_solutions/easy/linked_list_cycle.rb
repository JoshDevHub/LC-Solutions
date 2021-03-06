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
