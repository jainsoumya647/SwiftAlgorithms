//
//  main.swift
//  Island Perimeter
//
//  Created by Soumya Jain on 08/07/20.
//  Copyright © 2020 Soumya Jain. All rights reserved.
//

import Foundation

print("Hello, World!")
/*
 Question Link: https://leetcode.com/explore/featured/card/july-leetcoding-challenge/544/week-1-july-1st-july-7th/3383/
 */

class Solution {
    func islandPerimeter(_ grid: [[Int]]) -> Int {
        var perimeter = 0
        for (i, array) in grid.enumerated() {
            for (j, value) in array.enumerated() {
                if value == 1 {
                    if j == 0 {
                        perimeter += 1
                    } else if array[j-1] == 0 {
                        perimeter += 1
                    }
                    
                    if j == array.count-1 {
                        perimeter += 1
                    } else if array[j+1] == 0 {
                        perimeter += 1
                    }
                    
                    if i == 0 {
                        perimeter += 1
                    } else if grid[i-1][j] == 0 {
                        perimeter += 1
                    }
                    
                    if i == grid.count-1 {
                        perimeter += 1
                    } else if grid[i+1][j] == 0 {
                        perimeter += 1
                    }
                    
                }
            }
        }
        return perimeter
    }
}


print(Solution().islandPerimeter([[0,1,0,0],
                                  [1,1,1,0],
                                  [0,1,0,0],
                                  [1,1,0,0]]))
