https://leetcode.com/problems/remove-duplicates-from-sorted-list/

class Solution {
    func deleteDuplicates(_ head: ListNode?) -> ListNode? {
        if head == nil {
            return head
        }
        var next = head?.next
        var tempHead = head
        while next != nil {
            if tempHead?.val == next?.val {
                tempHead?.next = next?.next
                next = next?.next
            } else {
                tempHead = tempHead?.next
                next = next?.next 
            }
        }
        return head
    }
}