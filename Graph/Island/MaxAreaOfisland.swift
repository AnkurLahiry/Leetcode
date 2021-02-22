//
//  MaxAreaOfisland.swift
//  
//
//  Created by Ankur on 22/2/21.
//

import Foundation

https://leetcode.com/problems/max-area-of-island/

class Solution {
    
    func dfs(_ grid: [[Int]], _ visitedGraph: inout [[Bool]], _ row: Int, _ column: Int, _ count: inout Int) {
        if visitedGraph[row][column] {
            return
        }
        if grid[row][column] == 0 {
            return
        }
        visitedGraph[row][column] = true
        count += 1
        if row > 0 {
            dfs(grid, &visitedGraph, row - 1, column, &count)
        }
        if row < grid.count - 1 {
            dfs(grid, &visitedGraph, row + 1, column, &count)
        }
        if column > 0 {
            dfs(grid, &visitedGraph, row, column - 1, &count)
        }
        if column < grid[row].count - 1 {
            dfs(grid, &visitedGraph, row, column + 1, &count)
        }
    }
    
    func maxAreaOfIsland(_ grid: [[Int]]) -> Int {
        guard !grid.isEmpty else {
            return 0
        }
        var maxArea: Int = 0
        var visitedGraph = Array(repeating: Array(repeating: false, count: grid[0].count), count: grid.count)
        var row: Int = 0
        // var column: Int = 0
        while row < grid.count {
            var column = 0
            while column < grid[row].count {
                if grid[row][column] == 1 && visitedGraph[row][column] == false {
                    var count = 0
                    dfs(grid, &visitedGraph, row, column, &count)
                    maxArea = max(maxArea, count)
                }
                column += 1
            }
            row += 1
        }
        return maxArea
    }
}
