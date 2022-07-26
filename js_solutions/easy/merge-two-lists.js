// Given class
function ListNode(val, next) {
  this.val = (val === undefined ? 0 : val);
  this.next = (next === undefined ? null : next);
}

// solution
const mergeTwoLists = function(list1, list2) {
  let currentNode = new ListNode();
  const sortedList = currentNode;

  while (list1 && list2) {
    if (list1.val <= list2.val) {
      currentNode.next = list1;
      list1 = list1.next;
    } else {
      currentNode.next = list2;
      list2 = list2.next;
    }
    currentNode = currentNode.next;
  }

  currentNode.next = list1 || list2;
  return sortedList.next
}
