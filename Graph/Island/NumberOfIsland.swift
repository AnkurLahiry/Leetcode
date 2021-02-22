//
//  NumberOfIsland.swift
//  
//
//  Created by Ankur on 22/2/21.
//

import Foundation

https://leetcode.com/problems/number-of-islands/

class Solution {
    func dfs(_ grid: [[Character]], _ visited: inout [[Bool]], _ row: Int, _ column: Int) {
        if visited[row][column] {
            return
        }
        if grid[row][column] == "0" {
            return
        }
        visited[row][column] = true
        if row > 0 {
            dfs(grid, &visited, row - 1, column)
        }
        if row + 1 < grid.count {
            dfs(grid, &visited, row + 1, column)
        }
        if column > 0 {
            dfs(grid, &visited, row, column - 1)
        }
        if column + 1 < grid[0].count {
            dfs(grid, &visited, row, column + 1)
        }
    }
    
    func numIslands(_ grid: [[Character]]) -> Int {
        var count = 0
        var visited: [[Bool]] = Array(repeating: Array(repeating: false, count: grid[0].count),
                                      count: grid.count)
        var row = 0
        var column = 0
        let m = grid.count
        let n = grid[0].count
        while row < m {
            column = 0
            while column < n {
                if grid[row][column] == "1" && !visited[row][column] {
                    count += 1
                    dfs(grid, &visited, row, column)
                }
                column += 1
            }
            row += 1
        }
        // print(visited)
        return count
    }
}
