//
//  CombinationSum-I.swift
//  
//
//  Created by Ankur on 2/2/21.
//

class Solution {
    func backtrack(_ candidates: [Int],_ target: Int,_ start: Int, _ list: inout [Int], _ result: inout [[Int]]) {
        if target < 0 {
            return
        }
        if target == 0 {
            result.append(list)
            return
        }
        var i = start // by the line we want move back to backward
        while i < candidates.count {
            list.append(candidates[i])
            backtrack(candidates, target - candidates[i], i, &list, &result)
            list.removeLast()
            i += 1
        }
    }
    func combinationSum(_ candidates: [Int], _ target: Int) -> [[Int]] {
        var result = [[Int]]()
        var tempList = [Int]()
        backtrack(candidates, target, 0, &tempList, &result)
        return result
    }
}
