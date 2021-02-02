//
//  CountSortedVowel.swift
//  
//
//  Created by Ankur on 3/2/21.
//

import Foundation
// https://leetcode.com/problems/count-sorted-vowel-strings/

class Solution {
    func backtrack(_ candidates: [String], _ n: Int, _ start: Int, _ list: inout String, _ count: inout Int) {
        if n < 0 {
            return
        }
        if n == 0 {
            count += 1
            return
        }
        for i in start..<candidates.count {
            list += candidates[i]
            backtrack(candidates, n - 1, i, &list, &count)
            list.removeLast()
        }
    }
    func countVowelStrings(_ n: Int) -> Int {
        let candidates = ["a", "e", "i", "o", "u"]
        var count = 0
        var list = ""
        backtrack(candidates, n, 0, &list, &count)
        return count
    }
}
