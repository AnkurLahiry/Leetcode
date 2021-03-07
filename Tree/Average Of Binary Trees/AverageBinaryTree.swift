//https://leetcode.com/problems/average-of-levels-in-binary-tree/

class Solution {
    func averageOfLevels(_ root: TreeNode?) -> [Double] {
        var queue = [TreeNode]()
        guard let root = root else {
            return [0]
        }
        var result = [Double]()
        queue.append(root)
        while !queue.isEmpty {
            let count = queue.count 
            var index = 0 
            var sum: Double = 0 
            while index < count {
                let first = queue.removeFirst()
                sum += Double(first.val)
                if let left = first.left {
                    queue.append(left)
                }
                if let right = first.right {
                    queue.append(right)
                }
                index += 1
            }
            let average: Double = Double(sum/Double(count))
            result.append(average)
        }
        return result
    }
}
