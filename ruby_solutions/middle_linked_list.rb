# frozen_string_literal: true

# given class
class ListNode
  attr_accessor :val, :next

  def initialize(val = 0, _next = nil)
    @val = val
    @next = _next
  end
end

def middle_node(head)
  slow_pointer = head
  fast_pointer = head
  until fast_pointer.nil?
    break if fast_pointer.next.nil?

    fast_pointer = fast_pointer.next.next
    slow_pointer = slow_pointer.next
  end
  slow_pointer
end
