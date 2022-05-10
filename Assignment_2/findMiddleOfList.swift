// Given a single-linked list, find the middle value in the list.

class ListNode {
  public var val: Int
  public var next: ListNode?
  public init(_ val: Int) {
    self.val = val
    self.next = nil
  }
}

class Solution {
  func findMiddleNode(of head: ListNode?) -> ListNode? {
    if head == nil { return nil }
     
    var fast = head
    var slow = head
     
    while fast != nil && fast?.next != nil {
      fast = fast?.next?.next
      slow = slow?.next
    }
    return slow
  }
}