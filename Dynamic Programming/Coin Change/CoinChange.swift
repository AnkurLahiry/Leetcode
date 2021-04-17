https://leetcode.com/problems/coin-change/

class Solution {
    func coinChange(_ coins: [Int], _ amount: Int) -> Int {
        guard !coins.isEmpty else { return 0 }
        guard amount > 0 else { return 0 }
        var maxValue = 10001
        var helper = Array(repeating: maxValue, count: amount + 1)
        var am = 1
        helper[0] = 0
        while am <= amount {
            for case let coin in coins where coin <= am {
                helper[am] = min(helper[am], 1 + helper[am - coin])
            }
            am += 1
        }
        if helper[amount] != maxValue {
            return helper[amount]
        } else {
            return -1
        }
    }
}