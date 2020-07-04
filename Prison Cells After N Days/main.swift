//
//  main.swift
//  Prison Cells After N Days
//
//  Created by Soumya Jain on 05/07/20.
//  Copyright © 2020 Soumya Jain. All rights reserved.
//

import Foundation

print("Hello, World!")

/*
 Question Link: https://leetcode.com/explore/featured/card/july-leetcoding-challenge/544/week-1-july-1st-july-7th/3379/
 */
class Solution {
    func prisonAfterNDays(_ cells: [Int], _ N: Int) -> [Int] {
        var nValue = N%14
        var array = cells
        if nValue == 0 {
            nValue = 14
        }
        
        while(nValue != 0) {
            let temp = array
            for i in 1..<7 {
                array[i] = (temp[i-1] == temp[i+1]) ? 1 : 0
            }
            array[0] = 0
            array[7] = 0
            nValue -= 1
        }
        return array
    }
}

print(Solution().prisonAfterNDays([1,0,0,1,0,0,1,0], 1000000000))
