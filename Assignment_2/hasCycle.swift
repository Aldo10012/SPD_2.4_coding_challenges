// Given a singly-linked list, find whether or not it contains a cycle, and if it does, find the node at which the cycle starts (the node that two other nodes reference/point to).

class ListNode {
  public var val: Int
  public var next: ListNode?
  public init(_ val: Int) {
    self.val = val
    self.next = nil
  }
}

class Solution { 
  func hasCycle(_ head: ListNode?) -> Bool {
    var fast = head?.next
    var slow = head
     
    while (fast != nil && fast?.next != nil && slow != nil) {
      if fast === slow {
        return true
      }
      fast = fast?.next?.next
      slow = slow?.next
    }
     
    return false
  }
}