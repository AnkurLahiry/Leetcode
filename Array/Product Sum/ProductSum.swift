//
//  ProductSum.swift
//  
//
//  Created by Ankur on 9/2/21.
//

import Foundation

// This is an algo expert problem
// Write a function that takes in a special array and returns its product sum
// A Special array is a non empty array that contains either integers or other special arrays
// The product sum of a special array is the sum of its elements where "special" arrays inside it are summed themselfves and then multipled by their level of depth
// the depth of a special array is how far nested it is, for instance, the depth of [] is 1, the depth of [[]] is 2

// Example: Array [5,2, [7, - 1], 3, [5, [-13, 8], 4]]
// Answer: 12

// traverse the array
// if array[i] is an Int, add the sum
// if array[i] is an [Any], recursively call the function with multiplier + 1

class Program {
    // Tip: You can cast each element with `as? [Any]` to check whether it is
    // an array or an integer.
    func productSum(_ array: [Any], multiplier: Int) -> Int {
        var sum = 0
        for case let element in array {
            if let element = element as? Int {
                sum += element
            }
            if let element = element as? [Any] {
                sum += productSum(element, multiplier: multiplier + 1)
            }
        }
        return sum * multiplier
    }
}


