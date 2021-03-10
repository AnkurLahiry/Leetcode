//https://leetcode.com/problems/add-one-row-to-tree/

class Solution {
    func addOneRow(_ root: TreeNode?, _ v: Int, _ d: Int) -> TreeNode? {
        var queue = [TreeNode]()
        guard let root = root else {
            return nil
        }
        guard d > 1 else {
            var ret = TreeNode(v)
            ret.left = root
            return ret
        }
        
        queue.append(root)
        var count = 0 
        while !queue.isEmpty && count < d - 2 {
            let size = queue.count 
            var index = 0 
            while index < size {
                let dequeue = queue.removeFirst()
                print(dequeue.val)
                if let left = dequeue.left {
                    queue.append(left)
                }
                if let right = dequeue.right {
                    queue.append(right)
                }
                index += 1
            }
            count += 1
        }
        
        while !queue.isEmpty {
            let node = queue.removeFirst()
            var temp = node.left
            node.left = TreeNode(v)
            node.left?.left = temp
            
            temp = node.right
            node.right = TreeNode(v)
            node.right?.right = temp
        }
        return root
    }
}