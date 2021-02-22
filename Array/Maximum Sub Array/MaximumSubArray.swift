//
//  MaximumSubArray.swift
//  
//
//  Created by Ankur on 9/2/21.
//

import Foundation

//https://leetcode.com/problems/maximum-subarray/
// this also known as kadanne algorithm
class Solution {
    func maxSubArray(_ nums: [Int]) -> Int {
        guard nums.count > 1 else {
            return nums[0]
        }
        var helper = Array(repeating: 0, count: nums.count)
        helper[0] = nums[0]
        var index = 1
        while index < nums.count {
            helper[index] = max(helper[index - 1] + nums[index], nums[index])
            index += 1
        }
        return helper.max() ?? -1
    }
}

class Solution1 {
    func maxSubArray(_ nums: [Int]) -> Int {
        var helper = Array(repeating: 0, count: nums.count)
        helper[0] = nums[0]
        for index in 1..<nums.count {
            let presumedSum = nums[index] + helper[index - 1]
            helper[index] = max(presumedSum, nums[index])
        }
        return helper.max() ?? -1
    }
}
