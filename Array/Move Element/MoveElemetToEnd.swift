//
//  MoveElemetToEnd.swift
//  
//
//  Created by Ankur on 21/2/21.
//

import Foundation

// MOVE element to the end of the array

class Program {
  func moveElementToEnd(_ array: inout [Int], _ toMove: Int) -> [Int] {
        guard array.count > 1 else {
            return array
        }
    var left = 0
        var right = 1
        while right < array.count {
            if array[left] == toMove && array[right] != toMove {
                // swap
                let temp = array[left]
                array[left] = array[right]
                array[right] = temp
            } else if array[left] == array[right] && array[left] == toMove {
                right += 1
            } else {
                left += 1
                right += 1
            }
        }
        return array
  }
}

