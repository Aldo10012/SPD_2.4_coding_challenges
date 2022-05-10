// Given two sorted linked lists, merge them so that the resulting linked list is also sorted.

class ListNode {
  public var val: Int
  public var next: ListNode?
  public init(_ val: Int) {
    self.val = val
    self.next = nil
  }
}

class Solution {
  func mergeTwoLists(list1: ListNode?, list2: ListNode?) -> ListNode? {
    if list1 == nil && list2 == nil { return nil }
    if list1 == nil { return list2 }
    if list2 == nil { return list1 }

    var dummyNode: ListNode? = ListNode(0)
    var pointer1 = list1
    var pointer2 = list2
     
    while pointer1 != nil && pointer2 != nil {
      if pointer1!.val <= pointer2!.val {
        let newNode = ListNode(pointer1!.val)
        insert(node: newNode, toRoot: &dummyNode)
        pointer1 = pointer1?.next
      }
      else {
        let newNode = ListNode(pointer2!.val)
        insert(node: newNode, toRoot: &dummyNode)
        pointer2 = pointer2?.next
      }
    }
    if pointer1 == nil {
      insert(node: pointer2, toRoot: &dummyNode)
    }
    if pointer2 == nil {
      insert(node: pointer1, toRoot: &dummyNode)
    }
    return dummyNode?.next
  }
   
  func insert(node: ListNode?, toRoot root: inout ListNode?) {
    var current = root
    while current?.next != nil {
      current = current!.next
    }
    current?.next = node
  }
}