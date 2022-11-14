# frozen_string_literal: true

# given class
class ListNode
  attr_accessor :val, :next

  def initialize(val = 0, _next = nil)
    @val = val
    @next = _next
  end
end

def reverse_list(head)
  return head if head.nil? || head.next.nil?

  reversed = reverse_list(head.next)
  head.next.next = head
  head.next = nil
  reversed
end
