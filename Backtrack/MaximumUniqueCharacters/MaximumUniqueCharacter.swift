//
//  MaximumUniqueCharacter.swift
//  
//
//  Created by Ankur on 1/3/21.
//

import Foundation

//https://leetcode.com/problems/maximum-length-of-a-concatenated-string-with-unique-characters/

class Solution {
    func backtrack(_ arr: [String], _ index: inout Int, _ currentString: inout String, _ maxValue: inout Int) {
        if index > arr.count {
            maxValue = max(currentString.count, maxValue)
            return
        }
        for i in index..<arr.count {
            var tempString = currentString + arr[i]
            if Set(Array(tempString)).count == tempString.count {
                // valid
                maxValue = max(tempString.count, maxValue)
                var tempIndex = i + 1
                backtrack(arr, &tempIndex, &tempString, &(maxValue))
            }
            tempString.dropLast(arr[i].count)
        }
    }
    
    
    func maxLength(_ arr: [String]) -> Int {
        guard arr.count > 1 else {
            return arr[0].count
        }
        var max = 0
        var index = 0
        var currentString = ""
        backtrack(arr, &index, &currentString, &max)
        return max
    }
}
