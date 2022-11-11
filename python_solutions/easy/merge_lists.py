class Solution:
    def mergeTwoLists(self, list1: Optional[ListNode], list2: Optional[ListNode]) -> Optional[ListNode]:
        currentNode = ListNode()
        sorted = currentNode

        while list1 and list2:
            if list1.val <= list2.val:
                currentNode.next = list1
                list1 = list1.next
            else:
                currentNode.next = list2
                list2 = list2.next
            currentNode = currentNode.next
        currentNode.next = list1 or list2
        return sorted.next
