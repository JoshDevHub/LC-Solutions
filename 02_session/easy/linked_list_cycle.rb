# frozen_string_literal: true

# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val)
#         @val = val
#         @next = nil
#     end
# end

# @param {ListNode} head
# @return {Boolean}
def cycles?(head)
  return false if head.nil?

  fast_pointer = head.next&.next
  slow_pointer = head

  while fast_pointer
    return true if fast_pointer == slow_pointer

    fast_pointer = fast_pointer.next&.next
    slow_pointer = slow_pointer.next
  end
  false
end

# 5min

# NOTES
# algo/structure: linked list, fast/slow pointer
# time: O(n)
# space: O(1)

# Can use hashmap to cache values as the list is walked. Using the fast/slow
#    pointers keeps the algorithm in O(1) extra space while still running in
#    O(n) time.
