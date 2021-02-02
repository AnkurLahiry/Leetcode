//
//  CombinationSum-II.swift
//  
//
//  Created by Ankur on 2/2/21.
//

import Foundation

//Worst Solution. Converting array to set and then to array to get the desired array
class Solution {
    func backtrack(_ candidates: [Int], _ start: Int, _ target: Int, _ list: inout [Int], _ result: inout [[Int]]) {
        if target < 0 {
            return
        }
        if target == 0 {
            result.append(list)
            return
        }
        var i = start
        while i < candidates.count {
            list.append(candidates[i])
            backtrack(candidates, i+1, target - candidates[i], &list, &result)
            list.removeLast()
            i += 1
        }
    }
    func combinationSum2(_ candidates: [Int], _ target: Int) -> [[Int]] {
        let candidates = candidates.sorted()
        print(candidates)
        var result = [[Int]]()
        var tempList = [Int]()
        backtrack(candidates, 0, target, &tempList, &result)
        result = Array(Set(result))
        return result
    }
}

class Solution2 {
    func backtrack(_ candidates: [Int], _ start: Int, _ target: Int, _ list: inout [Int], _ result: inout [[Int]]) {
        if target < 0 {
            return
        } else if target == 0 {
            result.append(list)
            return
        }
        for i in start..<candidates.count {
            if i > start && candidates[i] == candidates[i - 1] {
                continue
            }
            list.append(candidates[i])
            backtrack(candidates, i+1, target - candidates[i], &list, &result)
            list.removeLast()
        }
    }
    
    func combinationSum2(_ candidates: [Int], _ target: Int) -> [[Int]] {
        let candidates = candidates.sorted()
        print(candidates)
        var result = [[Int]]()
        var tempList = [Int]()
        backtrack(candidates, 0, target, &tempList, &result)
        return result
    }
}
