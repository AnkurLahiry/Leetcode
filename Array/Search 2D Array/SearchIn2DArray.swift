//
//  SearchIn2DArray.swift
//  
//
//  Created by Ankur on 23/2/21.
//

import Foundation
//https://leetcode.com/problems/search-a-2d-matrix-ii/
class Solution {
    func searchMatrix(_ matrix: [[Int]], _ target: Int) -> Bool {
        var column = matrix[0].count - 1
        var row = 0
        while column >= 0 && row < matrix.count {
            if target == matrix[row][column] {
                return true
            } else if target < matrix[row][column] {
                column -= 1
            } else  {
                //if target > matrix[row][column]
                row += 1
            }
        }
        return false
    }
}
