// Given a binary tree, check whether it is a valid binary search tree (values in order).

public class TreeNode {
    public var val: Int
    public var left: TreeNode?
    public var right: TreeNode?
    public init(_ val: Int) { 
        self.val = val; self.left = nil; self.right = nil; 
    }
}

class Solution {
    func isValidBST(_ root: TreeNode?, _ min: Int = Int.min, _ max: Int = Int.max) -> Bool {
        guard let root = root else { return true }
        
        if (min >= root.val || root.val >= max) {
            return false
        }
        
        let leftIsValid = isValidBST(root.left, min, root.val)
        let rightIsValid = isValidBST(root.right, root.val, max)
        
        return leftIsValid && rightIsValid
    }    
}

