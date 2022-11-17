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
def reverse_list(head)
  new_head = head
  curr = head

  while curr.next
    temp = curr.next
    curr.next = curr.next.next
    temp.next = new_head
    new_head = temp
  end
  new_head
end

# 5min

# NOTES
# algo/structure: linked list
# time: O(n)
# space: O(1)

# standard linked list problem
