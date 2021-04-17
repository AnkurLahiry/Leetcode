//
//  Intersection_two_linkedlist.swift
//  
//
//  Created by Ankur on 5/3/21.
//

import Foundation

//https://leetcode.com/problems/intersection-of-two-linked-lists/

class Solution {
    func getIntersectionNode(_ headA: ListNode?, _ headB: ListNode?) -> ListNode? {
        var lengthA = length(headA)
        var lengthB = length(headB)
        let difference = abs(lengthA - lengthB)
        var tHeadA = headA
        var tHeadB = headB
        if difference != 0 {
            if lengthA < lengthB {
                tHeadB = moveToNode(headB, difference)
            } else {
                tHeadA = moveToNode(headA, difference)
            }
        }
        
        while tHeadA != nil || tHeadB != nil {
            if tHeadA === tHeadB {
                return tHeadA
            }
            tHeadA = tHeadA?.next
            tHeadB = tHeadB?.next
        }
        
        return nil
    }
    
    func length(_ node: ListNode?) -> Int {
        var current = 0
        var node = node
        while node != nil {
            current += 1
            node = node?.next
        }
        return current
    }
    
    func moveToNode(_ node: ListNode?, _ index: Int) -> ListNode? {
        var current = 0
        var node = node
        while current < index {
            node = node?.next
            current += 1
        }
        return node
    }
}
