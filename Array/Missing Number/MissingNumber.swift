//
//  MissingNumber.swift
//  
//
//  Created by Ankur on 3/3/21.
//

import Foundation
//https://leetcode.com/problems/missing-number/

class Solution {
    func missingNumber(_ nums: [Int]) -> Int {
        guard let minimum = nums.min(), let maximum = nums.max() else {
            return 0
        }
        if minimum > 0 {
            // [1,2]
            return 0
        }
        if maximum == nums.count - 1 {
            // [0,1]
            return maximum + 1
        }
        let assumedSum = (nums.count) * (nums.count + 1) / 2
        let total = nums.reduce(0, +)
        return abs(assumedSum - total)
    }
}
