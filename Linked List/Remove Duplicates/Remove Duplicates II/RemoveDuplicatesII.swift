https://leetcode.com/problems/remove-duplicates-from-sorted-list-ii/

class Solution {
    func deleteDuplicates(_ head: ListNode?) -> ListNode? {
        var dummy: ListNode? = ListNode(-101, head)
        var tempHead = dummy
        var tempNext = tempHead?.next 
        var countHead = dummy
        var dictionary = [Int: Int]()
        while countHead != nil {
            let value = countHead?.val ?? 0 
            dictionary[value] = 1 + (dictionary[value] ?? 0)
            countHead = countHead?.next
        }
        while tempHead != nil {
            if let value = tempHead?.next?.val, dictionary[value]! > 1  {
                tempHead?.next = tempHead?.next?.next
            } else {
                tempHead = tempHead?.next
            }
        }
        return dummy?.next
    }
}