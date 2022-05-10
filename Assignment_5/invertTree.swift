// Given a binary search tree, reverse the order of its values by modifying the nodes’ links.

public class TreeNode {
    public var val: Int
    public var left: TreeNode?
    public var right: TreeNode?
    public init(_ val: Int) { 
        self.val = val; self.left = nil; self.right = nil; 
    }
}

class Solution {
    func invertTree(_ root: TreeNode?) -> TreeNode? {
        if root == nil { return nil }
        
        let leftCopy = root?.left
        let rightCopy = root?.right
        root?.left = rightCopy
        root?.right = leftCopy
        
        invertTree(root?.left)
        invertTree(root?.right)
        return root
    }
}

