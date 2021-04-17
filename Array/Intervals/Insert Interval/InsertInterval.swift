// https://leetcode.com/problems/insert-interval/

class Solution {
    func insert(_ intervals: [[Int]], _ newInterval: [Int]) -> [[Int]] {
        var intervals = intervals
        intervals.append(newInterval)
        var sortedIntervals = intervals.sorted(by: { first, second in 
            return first[0] < second[0] 
        })
        guard sortedIntervals.count > 1 else {
            return sortedIntervals
        }
        var index = 1
        var result = [[Int]]()
        result.append(sortedIntervals[0])
        while index < sortedIntervals.count {
            let interval = sortedIntervals[index]
            let last = result[result.count - 1]
            if interval[0] <= last[1] {
                result[result.count - 1] = [
                    min(last[0], interval[0]),
                    max(last[1], interval[1])
                ]
            } else {
                result.append(interval)
            }
            index += 1
        }
        return result
    }
}