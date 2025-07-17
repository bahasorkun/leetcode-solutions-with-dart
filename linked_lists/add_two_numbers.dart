class ListNode {
  int val;
  ListNode? next;

  ListNode([this.val = 0, this.next]);
}

void main(List<String> args) {
  // Example usage:
  ListNode l1 = ListNode(2, ListNode(4, ListNode(3)));
  ListNode l2 = ListNode(5, ListNode(6, ListNode(4)));

  ListNode? result = addTwoNumbers(l1, l2);

  // Print the result
  while (result != null) {
    print(result.val);
    result = result.next;
  }
}

ListNode? addTwoNumbers(ListNode? l1, ListNode? l2) {
  ListNode dummyHead = ListNode(0);
  ListNode current = dummyHead;
  int carry = 0;

  while (l1 != null || l2 != null || carry > 0) {
    int sum = carry;
    if (l1 != null) {
      sum += l1.val;
      l1 = l1.next;
    }
    if (l2 != null) {
      sum += l2.val;
      l2 = l2.next;
    }

    carry = sum ~/ 10;
    current.next = ListNode(sum % 10);
    current = current.next!;
  }

  return dummyHead.next;
}
