// Binary tree post-order-traversal

public class TreeNode {
    public var val: Int
    public var left: TreeNode?
    public var right: TreeNode?
    public init(_ val: Int) { 
        self.val = val; self.left = nil; self.right = nil; 
    }
}

class Solution {
    func postOrderTraversal(_ root: TreeNode?) -> [Int] {
        var result = [Int]()
                
        func travers(_ root: TreeNode?) {
            guard let root = root else { return }
            
            if root.left != nil {
                travers(root.left)
            }
            
            if root.right != nil {
                travers(root.right)
            }
            result.append(root.val)
        }
        
        travers(root)
        
        return result
    }
}

