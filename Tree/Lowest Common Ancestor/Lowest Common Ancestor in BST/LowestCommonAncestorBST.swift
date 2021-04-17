
// https://leetcode.com/problems/lowest-common-ancestor-of-a-binary-search-tree/

class Solution {
    func lowestCommonAncestor(_ root: TreeNode?, _ p: TreeNode?, _ q: TreeNode?) -> TreeNode? {
        guard let root = root, let p = p, let q = q else {
            return nil
        }
        if p.val < root.val && q.val > root.val {
            return root
        }
        if p.val > root.val && q.val < root.val {
            return root
        }
        if p.val == root.val {
            return p
        }
        if q.val == root.val {
            return q
        }
        if p.val < root.val && q.val < root.val {
            return lowestCommonAncestor(root.left, p, q)
        } else {
            return lowestCommonAncestor(root.right, p, q)
        }
    }
}