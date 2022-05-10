// Given the heads of two singly linked-lists headA and headB, return the node at which the two lists intersect. If the two linked lists have no intersection at all, return null.

class ListNode {
  public var val: Int
  public var next: ListNode?
  public init(_ val: Int) {
    self.val = val
    self.next = nil
  }
}

class Solution {
  func getIntersectionNode(_ headA: ListNode?, _ headB: ListNode?) -> ListNode? {
    var headA = headA
    var headB = headB
    let aLen = length(headA)
    let bLen = length(headB)
     
    var dif = aLen - bLen
    var AisLonger = true
    if dif < 0 { AisLonger = false }

    for i in 0..<abs(dif) {
      if AisLonger { 
        headA = headA!.next 
      } else { 
        headB = headB!.next 
      }
    }
    while headA != nil && headB != nil {
      if headA === headB {
        return headA
      }
      headA = headA!.next
      headB = headB!.next
    } 
    return nil
  }
   
  private func length(_ head: ListNode?) -> Int {
    if head == nil { return 0 }
    var current = head
    var len = 0
     
    while current != nil {
      current = current!.next
      len += 1
    }
     
    return len
  }
}