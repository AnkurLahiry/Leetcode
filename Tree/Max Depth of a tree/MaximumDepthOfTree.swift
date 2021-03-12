
https://leetcode.com/problems/maximum-depth-of-binary-tree/

class Solution {
    func maxDepth(_ root: TreeNode?) -> Int {
        var queue = [TreeNode]()
        guard let root = root else {
            return 0
        }
        queue.append(root)
        var c = 0
        while !queue.isEmpty {
            var count = queue.count 
            c += 1
            var index = 0
            while index < count {
                let dequeue = queue.removeFirst()
                if let left = dequeue.left {
                    queue.append(left)
                }
                if let right = dequeue.right {
                    queue.append(right)
                }
                index += 1
            } 
        }
        return c
    }
}