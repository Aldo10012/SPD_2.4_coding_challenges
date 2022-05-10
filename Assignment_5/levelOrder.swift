// Binary tree level order traversal

public class TreeNode {
    public var val: Int
    public var left: TreeNode?
    public var right: TreeNode?
    public init(_ val: Int) { 
        self.val = val; self.left = nil; self.right = nil; 
    }
}

class Solution {
    func levelOrder(_ root: TreeNode?) -> [[Int]] {
        if root == nil { return [] }
        
        var result: [[Int]] = []
        var queue: [(TreeNode?, Int)] = []
        //          node,      what level it's on
        
        queue.append((root, 0))
        var currentLevel = 0
        var currentRow: [Int] = []
        
        while !queue.isEmpty {
            let root = queue[0].0 
            let levelOfRoot = queue[0].1
            
            // check if we're still on same level:
            // if yes, append new int to currentRow
            // if not, append currentRow to result 
            
            if levelOfRoot == currentLevel {
                currentRow.append(root!.val)
            }
            else {
                result.append(currentRow)
                currentRow = [root!.val]
                currentLevel = levelOfRoot
            }
            
            // dequeue
            queue.remove(at: 0)
            
            // add left and right to tree
            if root?.left != nil {
                queue.append((root?.left, levelOfRoot+1))
            }
            if root?.right != nil {
                queue.append((root?.right, levelOfRoot+1))
            }
            
        }
        result.append(currentRow)
        
        return result
    }    
}

