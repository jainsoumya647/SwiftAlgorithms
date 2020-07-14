//
//  main.swift
//  3Sum
//
//  Created by Soumya Jain on 15/07/20.
//  Copyright © 2020 Soumya Jain. All rights reserved.
//

import Foundation

print("Hello, World!")

/*
 Question Link: https://leetcode.com/explore/featured/card/july-leetcoding-challenge/545/week-2-july-8th-july-14th/3384/
 */

class Solution {
    func threeSum(_ nums: [Int]) -> [[Int]] {
        
        var result = [[Int]]()
        let sortedNums = nums.sorted()
        let n = sortedNums.count
        var index = 0
        while(index < n-2) {
            var j = index+1
            var k = n-1
            while(j < k) {
                let res = sortedNums[j] + sortedNums[index] + sortedNums[k]
                if res == 0 {
                    result.append([sortedNums[j], sortedNums[index], sortedNums[k]])
                    while(j < k && sortedNums[j+1]==sortedNums[j]) {
                        j += 1
                    }
                    j += 1
                    while(j < k && sortedNums[k-1]==sortedNums[k]) {
                        k -= 1
                    }
                    k -= 1
                } else if (res > 0) {
                    k -= 1
                } else {
                    j += 1
                }
            }
            while(index < n-2 && sortedNums[index+1]==sortedNums[index]) {
                index += 1
            }
            index += 1
        }
        
        return result
    }
}

print(Solution().threeSum([-1, 0, 1, 2, -1, -4]))
