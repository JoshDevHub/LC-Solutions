# frozen_string_literal: true

# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val = 0, _next = nil)
#         @val = val
#         @next = _next
#     end
# end
# @param {ListNode} head
# @return {ListNode}
def middle_node(head)
  slow_pointer = head
  fast_pointer = head&.next

  while fast_pointer
    fast_pointer = fast_pointer.next&.next
    slow_pointer = slow_pointer.next
  end

  slow_pointer
end

# 5min

# NOTES
# algo/structure: linked list, fast/slow pointers
# time: O(n)
# space: O(n)

# Pretty trivial problem if you know the fast and slow pointer technique. The
#   "fast pointer" walks the list at double speed, meaning that when it reaches
#   the end of the list, the "slow pointer" should be pointing at the middle
#   element. Safe navigation helps clean the code up quite a bit by avoiding
#   nil errors without verbose conditional logic
