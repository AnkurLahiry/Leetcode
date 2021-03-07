

//https://leetcode.com/problems/design-hashmap/

class MyHashMap {
    
    var array: [Int]

    /** Initialize your data structure here. */
    init() {
        array = [Int]()
    }
    
    /** value will always be non-negative. */
    func put(_ key: Int, _ value: Int) {
        let count = array.count 
        if count <= key {
            let difference = key - count + 1 
            var index = 0 
            while index < difference {
                array.append(-1)
                index += 1
            }
        }
        array[key] = value
    }
    
    /** Returns the value to which the specified key is mapped, or -1 if this map contains no mapping for the key */
    func get(_ key: Int) -> Int {
        let count = array.count 
        if count <= key {
            return -1 
        } else {
            return array[key]
        }
    }
    
    /** Removes the mapping of the specified value key if this map contains a mapping for the key */
    func remove(_ key: Int) {
        let count = array.count
        if count <= key {
            return 
        }
        array[key] = -1
    }
}

/**
 * Your MyHashMap object will be instantiated and called as such:
 * let obj = MyHashMap()
 * obj.put(key, value)
 * let ret_2: Int = obj.get(key)
 * obj.remove(key)
 */