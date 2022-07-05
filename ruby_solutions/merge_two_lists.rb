# frozen_string_literal: true

# given Class
# modified with Comparable
class ListNode
  include Comparable

  attr_accessor :val, :next

  def initialize(val = 0, _next = nil)
    @val = val
    @next = _next
  end

  def <=>(other)
    val <=> other.val
  end
end

# solution
def merge_two_lists(list1, list2)
  current_node = ListNode.new
  sorted_list = current_node

  while list1 && list2
    if list1 <= list2
      current_node.next = list1
      list1 = list1.next
    else
      current_node.next = list2
      list2 = list2.next
    end
    current_node = current_node.next
  end

  current_node.next = list1 || list2
  sorted_list.next
end
