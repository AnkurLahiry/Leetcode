//
//  MoveZeros.swift
//  
//
//  Created by Ankur on 21/2/21.
//

import Foundation

https://leetcode.com/problems/move-zeroes/

class Solution {
    func moveZeroes(_ nums: inout [Int]) {
        var toMove = 0
        guard nums.count > 1 else {
            return
        }
        var left = 0
        var right = 1
        while right < nums.count {
            if nums[left] == toMove && nums[right] != toMove {
                // swap
                let temp = nums[left]
                nums[left] = nums[right]
                nums[right] = temp
            } else if nums[left] == nums[right] && nums[left] == toMove {
                right += 1
            } else {
                left += 1
                right += 1
            }
        }
        // return nums
    }
}


