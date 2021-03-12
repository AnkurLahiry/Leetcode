Check If a String Contains All Binary Codes of Size K

Solution

1) We have to find 2^k sets and all the elements of the set should be serialed
2) Lets approch sliding window approach 
3) Append to a Set for making unique
4) check if the set size == 2^k

Example: 

0011 with K = 2

Set = { 00, 01, 11 }

2 ^ 2 = 4

So return false because no 10

00110110 with K = 2

Set = {00, 01, 11, 10, 01, 11, 10}
After Removing duplicates 

Set = {00, 01, 11, 10}

2 ^ 2 = 4 

return true 

//https://leetcode.com/problems/check-if-a-string-contains-all-binary-codes-of-size-k/

class Solution {
    func hasAllCodes(_ s: String, _ k: Int) -> Bool {
        let s = Array(s)
        guard s.count > k else{return false}
        var set = Set<String>()
        var start = 0
        for i in 0...s.count - k {
            let string = String(s[i..<i+k])
            set.insert(string)
            start += 1
        }
        return set.count == Int(pow(Double(2),Double(k)))
    }
}
