//
//  Combine.swift
//  
//
//  Created by Ankur on 12/2/21.
//

import Foundation

// https://leetcode.com/problems/combinations/
class Solution {
    
    func backtrack(_ ret: inout [[Int]], _ start: inout Int, _ result: inout [Int],_ k: Int, _ n: Int) {
        if result.count == k {
            ret.append(result)
            return
        }
        if start > n {
            return
        }
        for index in start...n {
            result.append(index)
            var next = index + 1
            backtrack(&ret, &next, &result, k, n)
            result.removeLast()
        }
    }
    
    func combine(_ n: Int, _ k: Int) -> [[Int]] {
        var ret = [[Int]]()
        var startIndex = 1
        var result = [Int]()
        backtrack(&ret, &startIndex, &result, k, n)
        return ret
    }
}
