https://leetcode.com/problems/search-in-rotated-sorted-array/

class Solution {
    func searchRecursion(_ nums: [Int], _ left: Int, _ right: Int, _ target: Int) -> Int {
        if left > right {
            return -1 
        }
        let middle = (left + right)/2
        if nums[middle] == target {
            return middle
        }
        let leftPart = searchRecursion(nums, left, middle - 1, target)
        let rightPart = searchRecursion(nums, middle + 1, right, target)
        if leftPart != -1 {
            return leftPart
        } 
        if rightPart != -1 {
            return rightPart
        }
        return -1
    }
    
    func search(_ nums: [Int], _ target: Int) -> Int {
        return searchRecursion(nums, 0, nums.count - 1, target)
    }
}