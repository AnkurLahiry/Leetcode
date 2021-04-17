https://leetcode.com/problems/path-sum/

class Solution {
    func pathSum(_ root: TreeNode?, _ current: inout Int, 
                 _ hasSum: inout Bool, _ targetSum: Int) {
        guard let root = root else {
            return 
        }
        var newSum = root.val + current 
        if root.left == nil && root.right == nil {
            if newSum == targetSum {
                hasSum = true 
            }
            return 
        }
        if !hasSum {
            pathSum(root.left, &newSum, &hasSum, targetSum)
            pathSum(root.right, &newSum, &hasSum, targetSum)
        }
    }
    func hasPathSum(_ root: TreeNode?, _ targetSum: Int) -> Bool {
        var hasSum = false 
        var currentSum = 0 
        pathSum(root, &currentSum, &hasSum, targetSum)
        return hasSum
    }
}