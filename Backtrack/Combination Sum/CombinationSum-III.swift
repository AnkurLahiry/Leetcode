//
//  CombinationSum-III.swift
//  
//
//  Created by Ankur on 3/2/21.
//

import Foundation

// https://leetcode.com/problems/combination-sum-iii/
class Solution {
    func backtrack(_ candidates: [Int], _ start: Int, _ target: Int, _ list: inout [Int], _ result: inout [[Int]], _ k: Int) {
        
        if target < 0 {
            return
        }
        
        if list.count > k {
            return
        }
        
        if target == 0 && list.count == k {
            result.append(list)
            return
        }
        
        for i in start..<candidates.count {
            list.append(candidates[i])
            backtrack(candidates, i+1, target - candidates[i], &list, &result, k)
            list.removeLast()
        }
    }
    
    func combinationSum3(_ k: Int, _ n: Int) -> [[Int]] {
        let candidates = [1,2,3,4,5,6,7,8,9]
        var tempList = [Int]()
        var result = [[Int]]()
        backtrack(candidates, 0, n, &tempList, &result, k)
        return result
    }
}

