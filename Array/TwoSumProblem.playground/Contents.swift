import UIKit

// https://leetcode.com/problems/two-sum/

let array = [3, 5, -4, 8, 11, 1, -1, 6]
let targetSum = 14

class TwoSumProblem_Solution1 {
    func findTwoSum(_ arr: [Int], _ targetSum: Int) -> [Int] {
        var i = 0, j = 1
        while i < arr.count {
            while j < arr.count {
                if arr[i] + arr[j] == targetSum {
                    return [arr[i], arr[j]]
                }
                j += 1
            }
            i += 1
        }
        return []
    }
}


let solution1 = TwoSumProblem_Solution1()
let solution1Array = solution1.findTwoSum(array, targetSum)
print(solution1Array)

class TwoSumProblem_Solution2 {
    func findTwoSum(_ arr: [Int], _ targetSum: Int) -> [Int] {
        var dictionary = [Int : Int]()
        for case let x in arr {
            let y = targetSum - x
            if dictionary[y] != nil {
                return [x, y]
            }
            dictionary[x] = 1
        }
        return []
    }
}

let solution2 = TwoSumProblem_Solution2()
let solution2Array = solution2.findTwoSum(array, targetSum)
print(solution2Array)

class TwoSumProblem_Solution3 {
    func findTwoSum(_ arr: [Int], _ targetSum: Int) -> [Int] {
        let arr = arr.sorted()
        var i = 0, j = arr.count - 1
        while i <= j {
            let sum = arr[i] + arr[j]
            if sum == targetSum {
                return [arr[i], arr[j]]
            } else if sum < targetSum {
                i += 1
            } else {
                j -= 1
            }
        }
        return []
    }
}

let solution3 = TwoSumProblem_Solution3()
let solution3Array = solution3.findTwoSum(array, targetSum)
print(solution3Array)
