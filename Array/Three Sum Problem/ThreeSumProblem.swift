//
//  ThreeSumProblem.swift
//  
//
//  Created by Ankur on 31/1/21.
//


// https://leetcode.com/problems/3sum/
// a+b+c = 0

class Solution {
    func threeSum(_ nums: [Int]) -> [[Int]] {
        let nums = nums.sorted()
        var result = [[Int]]()
        var index = 0
        var count = nums.count
        for i in 0..<count {
            // repeative not allowed
            if i != 0, nums[i] == nums[i-1] { continue }
            //Rest of Two Sum Solution 3
            var left = i + 1, right = count - 1
            while left < right {
                let sum = nums[i] + nums[left] + nums[right]
                if sum > 0 {
                    right -= 1
                } else if sum < 0 {
                    left += 1
                } else {
                    result.append([nums[i], nums[left], nums[right]])
                    left += 1
                    while left < right, nums[left] == nums[left-1] {
                        left += 1
                    }
                }
            }
        }
        return result
    }
}
