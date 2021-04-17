//https://leetcode.com/problems/keys-and-rooms/

class Solution {
    func canVisitAllRooms(_ rooms: [[Int]]) -> Bool {
        var queue = [Int]()
        var visitedSet: Set<Int> = Set<Int>()
        queue.append(0)
        while !queue.isEmpty {
            let dequeue = queue.removeFirst()
            if !visitedSet.contains(dequeue) {
                visitedSet.insert(dequeue)
                let listedRoom = rooms[dequeue] 
                for case let room in listedRoom {
                    queue.append(room)
                }
            }
        }
        
        return visitedSet.count == rooms.count
    }
}