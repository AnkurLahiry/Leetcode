https://leetcode.com/problems/longest-consecutive-sequence/

class Solution {
    class Item {
        var element: Int 
        var count: Int 
        init(element: Int, count: Int) {
            self.element = element
            self.count = count
        }
    }
    func longestConsecutive(_ nums: [Int]) -> Int {
        guard !nums.isEmpty else {
            return 0
        }
        var minimum = nums.min() ?? 0
        var maximum = nums.max() ?? 0
        var helper = [Item]()
        var i = minimum
        while i <= maximum {
            helper.append(Item(element: i, count: 0))
            i += 1
        }
        for case let num in nums {
            let index = abs(num - minimum)
            helper[index].count += 1
        }
        var maximumCount = 0
        var count = 1
        var index = 1
        while index < helper.count {
            if helper[index].count > 0 && helper[index - 1].count > 0 {
                count += 1
            } else if helper[index].count > 0 && helper[index - 1].count == 0 {
                count = 1  
            } else {
                maximumCount = max(maximumCount, count)
                count = 0
            }
            index += 1
        } 
        maximumCount = max(maximumCount, count)
        return maximumCount
    }
}