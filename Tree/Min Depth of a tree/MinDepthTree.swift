https://leetcode.com/problems/minimum-depth-of-binary-tree/

class Solution {
    func minDepth(_ root: TreeNode?) -> Int {
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
                var leftAvailable = false 
                var rightAvailable = false 
                if let left = dequeue.left {
                    queue.append(left)
                    leftAvailable.toggle()
                }
                if let right = dequeue.right {
                    queue.append(right)
                    rightAvailable.toggle()
                }
                if !leftAvailable && !rightAvailable {
                    return c
                }
                index += 1
            } 
        }
        return c
    }
}