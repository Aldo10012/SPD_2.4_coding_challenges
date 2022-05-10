// Given an array of k singly-linked lists, each of whose values are in sorted order, combine all nodes (do not create new nodes) into one singly-linked list with all values in order.

class ListNode {
  public var val: Int
  public var next: ListNode?
  public init(_ val: Int) {
    self.val = val
    self.next = nil
  }
}

class Solution {
    func mergeKLists(_ lists: [ListNode?]) -> ListNode? {
        var result: ListNode? = lists[0]
        for i in 0..<lists.count-1 {
            result = merge2Lists(result, lists[i+1])
        }
        return result
    }
    
    func merge2Lists(_ list1: ListNode?, _ list2: ListNode?) -> ListNode? {
        var result: ListNode? = ListNode(0)
        var tail = result
        
        var pointer1 = list1
        var pointer2 = list2
        
        while pointer1 != nil && pointer2 != nil {
            if pointer1!.val < pointer2!.val {
                let newNode = ListNode(pointer1!.val)
                tail?.next = newNode
                tail = tail?.next
                pointer1 = pointer1?.next
            } else {
                let newNode = ListNode(pointer2!.val)
                tail?.next = newNode
                tail = tail?.next
                pointer2 = pointer2?.next
            }
        }
        
        if pointer1 != nil { tail?.next = pointer1 }
        if pointer2 != nil { tail?.next = pointer2 }
        
        return result?.next
    }
}