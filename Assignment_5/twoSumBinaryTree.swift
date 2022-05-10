// Given a binary search tree containing integers and a target integer, come up with an efficient way to locate two nodes in the tree whose sum is equal to the target value.

public class TreeNode {
    public var val: Int
    public var left: TreeNode?
    public var right: TreeNode?
    public init(_ val: Int) { 
        self.val = val; self.left = nil; self.right = nil; 
    }
}

class Solution {
    func twoSumBinaryTree(_ root: TreeNode, target: Int) -> (Int, Int)? {
        let list: [Int] = inorderTraversal(root)
        
        var left = 0
        var right = list.count - 1
        
        while right > left {
            let sum = list[left] + list[right]
            
            if sum < target {
                left += 1
            }
            else if sum > target {
                right -= 1
            }
            else {
                return (list[left], list[right])
            }
        }
        
        return nil
    }
    
    func inorderTraversal(_ root: TreeNode?) -> [Int] {
        var result = [Int]()
        
        func travers(_ root: TreeNode?) {
            guard let root = root else { return }
            
            if root.left != nil {
                travers(root.left)
            }
            
            result.append(root.val)
            
            if root.right != nil {
                travers(root.right)
            }
        }
        
        travers(root)
        return result
    }
}

