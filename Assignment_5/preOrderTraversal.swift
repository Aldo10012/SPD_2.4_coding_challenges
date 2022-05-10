// Binary Tree Pre-order-traversal

public class TreeNode {
    public var val: Int
    public var left: TreeNode?
    public var right: TreeNode?
    public init(_ val: Int) { 
        self.val = val; self.left = nil; self.right = nil; 
    }
}

class Solution {
    func preOrderTraversal(_ root: TreeNode?) -> [Int] {
        var result = [Int]()
                
        func travers(_ root: TreeNode?) {
            guard let root = root else { return }
            result.append(root.val)
            if root.left != nil {
                travers(root.left)
            }
            if root.right != nil {
                travers(root.right)
            }
        }
        
        travers(root)
        return result
    }
}

