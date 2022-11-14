# frozen_string_literal: true

# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val = 0, _next = nil)
#         @val = val
#         @next = _next
#     end
# end

# @param {ListNode} list1
# @param {ListNode} list2
# @return {ListNode}
def merge_two_lists(list1, list2)
  dummy = ListNode.new
  merge_list = dummy

  while list1 && list2
    if list1.val < list2.val
      dummy.next = list1
      list1 = list1.next
    else
      dummy.next = list2
      list2 = list2.next
    end
    dummy = dummy.next
  end

  dummy.next = list1 || list2
  merge_list.next
end

# NOTES
# algorithm: linked list manip
# time: O(m * n)
# space: O(1)

# pretty standard algorithm with walking the lists around
