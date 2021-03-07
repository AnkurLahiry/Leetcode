// https://leetcode.com/problems/search-in-rotated-sorted-array-ii/

class Solution {
    func searchRecursion(_ nums: [Int], _ left: Int, _ right: Int, _ target: Int) -> Bool {
        if left > right {
            return false
        }
        let middle = (left + right)/2
        if nums[middle] == target {
            return true
        }
        let leftPart = searchRecursion(nums, left, middle - 1, target)
        let rightPart = searchRecursion(nums, middle + 1, right, target)
        return leftPart || rightPart
    }
    
    func search(_ nums: [Int], _ target: Int) -> Bool {
        return searchRecursion(nums, 0, nums.count - 1, target)
    }
}