https://leetcode.com/problems/path-sum-ii/

class Solution {
    func pathSumHelper(_ root: TreeNode?,_ result: inout [[Int]], 
                       _ helper: inout [Int],_ sum: inout Int,_ targetSum: Int) {
        guard let root = root else {
            return 
        }
        var newSum = sum + root.val 
        var newHelper = helper
        newHelper.append(root.val)
        if root.left == nil && root.right == nil {
            if newSum == targetSum {
                result.append(newHelper)
            }
            return 
        }
        pathSumHelper(root.left, &result, &newHelper, &newSum, targetSum)
        pathSumHelper(root.right, &result, &newHelper, &newSum, targetSum)
    }
    func pathSum(_ root: TreeNode?, _ targetSum: Int) -> [[Int]] {
        var sum = 0
        var result = [[Int]]()
        var helper = [Int]()
        pathSumHelper(root, &result, &helper, &sum, targetSum)
        return result
    }
}