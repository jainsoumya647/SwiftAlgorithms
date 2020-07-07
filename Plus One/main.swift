//
//  main.swift
//  Plus One
//
//  Created by Soumya Jain on 07/07/20.
//  Copyright © 2020 Soumya Jain. All rights reserved.
//

import Foundation

print("Hello, World!")

/*
 Question Link: https://leetcode.com/explore/featured/card/july-leetcoding-challenge/544/week-1-july-1st-july-7th/3382/
 */

class Solution {
    func plusOne(_ digits: [Int]) -> [Int] {
        var resultArray = digits
        for index in 0..<resultArray.count {
            let currentIndex = resultArray.count-index-1
            if resultArray[currentIndex] == 9 {
                resultArray[currentIndex] = 0
                if currentIndex == 0 {
                    resultArray = [1] + resultArray
                }
            } else {
                resultArray[currentIndex] = resultArray[currentIndex]+1
                break
            }
        }
        return resultArray
    }
}


print(Solution().plusOne([9]))
