//
//  FourSumProblem.swift
//  
//
//  Created by Ankur on 3/2/21.
//

import Foundation

class Solution {
    func fourSum(_ nums: [Int]) -> [[Int]] {
        let nums = nums.sorted()
        var result = [[Int]]()
        var index = 0
        var count = nums.count
        for a in 0..<nums.count {
            if i != 0, nums[a] == nums[a-1] { continue }
            for i in a..<count {
                // repeative not allowed
                if i != 0, nums[i] == nums[i-1] { continue }
                //Rest of Two Sum Solution 3
                var left = i + 1, right = count - 1
                while left < right {
                    let sum = nums[a] + nums[i] + nums[left] + nums[right]
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
        }
        
        
        return result
    }
}
