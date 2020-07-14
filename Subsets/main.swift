//
//  main.swift
//  Subsets
//
//  Created by Soumya Jain on 15/07/20.
//  Copyright © 2020 Soumya Jain. All rights reserved.
//

import Foundation

print("Hello, World!")

/*
 Question Link: https://leetcode.com/explore/featured/card/july-leetcoding-challenge/545/week-2-july-8th-july-14th/3386/
 */

class Solution {
    func subsets(_ nums: [Int]) -> [[Int]] {
        
        var subSetArray = [[Int]]()
        subSetArray.append([])
        
        for value in nums {
            let size = subSetArray.count
            var i = 0
            while(i<size) {
                var subArray = subSetArray[i]
                subArray.append(value)
                subSetArray.append(subArray)
                i+=1
            }
        }
        return subSetArray
    }
}


print(Solution().subsets([1,2,3]))
