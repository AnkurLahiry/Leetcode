//https://leetcode.com/problems/remove-palindromic-subsequences/

class Solution {
    func removePalindromeSub(_ s: String) -> Int {
        guard !s.isEmpty else {
            return 0
        }
        return s == String(s.reversed()) ? 1 : 2
    }
}