//
//  IsSubsequence.swift
//  
//
//  Created by Ankur on 8/2/21.
//

import Foundation

//https://leetcode.com/problems/is-subsequence/
class Solution {
    func isSubsequence(_ s: String, _ t: String) -> Bool {
        guard !s.isEmpty else {
            return true
        }
        guard !t.isEmpty else {
            return s.isEmpty
        }
        guard s.count <= t.count else {
            // s = "" , t = "abcd" -> true
            // s = "a", t ="xyz" -> true
            return false
        }
        
        var i = 0 , j = 0
        while i < t.count {
            let tIndex = t.index(t.startIndex, offsetBy: i)
            let sIndex = s.index(s.startIndex, offsetBy: j)
            if s[sIndex] == t[tIndex] {
                i += 1
                j += 1
                if j == s.count {
                    return true
                }
            } else {
                i += 1
            }
        }
        return j == s.count
    }
}
