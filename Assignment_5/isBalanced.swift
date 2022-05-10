// Let’s say a binary tree is "super balanced" if the difference between the depths of any two leaf nodes is at most one. Write a function to check if a binary tree is "super balanced".

public class TreeNode {
    public var val: Int
    public var left: TreeNode?
    public var right: TreeNode?
    public init(_ val: Int) { 
        self.val = val; self.left = nil; self.right = nil; 
    }
}

class Solution {
    func isBalanced(_ root: TreeNode?) -> Bool {
        if root == nil {return true}
        
        var leftHeight: Int = 0
        var rightHeight: Int = 0
        
        if root?.left != nil {
            leftHeight = findHight(root!.left)
        }
        if root?.right != nil {
            leftHeight = findHight(root!.right)
        }
        
        let dif = abs(leftHeight - rightHeight)
        return dif < 2 && isBalanced(root?.left) && isBalanced(root?.right)
    }
    
    func findHight(_ root: TreeNode?) -> Int {
        var leftHeight: Int = 0
        var rightHeight: Int = 0
        
        if root?.left != nil {
            findHight(root!.left)
        }
        if root?.right != nil {
            findHight(root!.right)
        }
        
        return 1 + max(leftHeight, rightHeight)
    }
} 

