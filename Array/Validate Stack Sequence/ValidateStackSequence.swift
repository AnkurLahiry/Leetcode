//
//  ValidateStackSequence.swift
//  
//
//  Created by Ankur on 8/2/21.
//

import Foundation

// puhsed 1,2,3,4,5
// popped 4,5,3,2,1

// https://leetcode.com/problems/validate-stack-sequences/


class Solution {
    func validateStackSequences(_ pushed: [Int], _ popped: [Int]) -> Bool {
        guard !pushed.isEmpty else {
            return true
        }
        var i = 0
        var count = pushed.count
        var j = 0
        var stack = [Int]()
        while i < count {
            stack.append(pushed[i])
            while let last = stack.last, last == popped[j] && j < popped.count {
                stack.removeLast()
                j += 1
            }
            i += 1
        }
        return stack.isEmpty
    }
}
