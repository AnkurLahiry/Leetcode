Steps:

1) check if first row contains zero
2) check if first column contains zero
3) check for zero, if found then make the [row][0] and [0][column] zero
4) loop on first row, if zero found make that column (from column + 1) associated row as 0. 
5) 4) loop on first column, if zero found make that column (from row + 1) associated column as 0. 
6) if first row contains zero, make that 0th column zero (checked by step 1)
7) if first column contains zero, make that 0th row zero (checked by step 2)


https://leetcode.com/problems/set-matrix-zeroes/

class Solution {
    func setZeroes(_ matrix: inout [[Int]]) {
        var row = 0
        var col = 0
        var firstRowZero = false 
        var firstColumnZero = false 
        
        while row < matrix.count {
            if matrix[row][0] == 0 {
                firstRowZero = true 
            }
            row += 1
        }
        
        while col < matrix[0].count {
            if matrix[0][col] == 0 {
                firstColumnZero = true
            }
            col += 1
        }
        
        row = 1
        col = 1
        
        while row < matrix.count {
            col = 1
            while col < matrix[row].count {
                if matrix[row][col] == 0 {
                    matrix[0][col] = 0
                    matrix[row][0] = 0
                    
                }
                col += 1
            }
            row += 1
        }
        
        print(matrix)
        
        row = 1
        col = 1
        
        while row < matrix.count {
            var col = 1
            if matrix[row][0] == 0 {
                while col < matrix[row].count {
                    matrix[row][col] = 0
                    col += 1
                }
            }
            row += 1
        }
        
        print(matrix)
        
        row = 1
        col = 1
        
        while col < matrix[0].count {
            var row = 1
            if matrix[0][col] == 0 {
                while row < matrix.count {
                    matrix[row][col] = 0
                    row += 1
                }
            }
            col += 1
        }
        
        print(matrix)
        
        row = 0
        col = 0 
        if firstRowZero {
            while row < matrix.count {
                matrix[row][0] = 0
                row += 1
            }
        }
        print(matrix)
        row = 0
        col = 0 
        if firstColumnZero {
            while col < matrix[0].count {
                matrix[0][col] = 0
                col += 1
            }
        }
        print(matrix)
    }
}