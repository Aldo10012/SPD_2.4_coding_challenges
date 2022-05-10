// Given a singly-linked list, reverse the order of the list by modifying the nodes’ links.

class ListNode {
  public var val: Int
  public var next: ListNode?
  public init(_ val: Int) {
    self.val = val
    self.next = nil
  }
}

class Solution {
  func reverseList(_ head: ListNode?) -> ListNode? {
    if head == nil { return nil }
     
    var currentNode = head
    var nextNode: ListNode? = head!.next
    var previous: ListNode? = nil
         
    while currentNode != nil {
      currentNode!.next = previous
       
      previous = currentNode
      currentNode = nextNode
      nextNode = currentNode?.next
    }
     
    return previous
  }
   
  func printList(_ head: ListNode?) {
    var currentNode = head
     
    while currentNode != nil {
      print(currentNode?.val)
      currentNode = currentNode?.next
    }
  }
}