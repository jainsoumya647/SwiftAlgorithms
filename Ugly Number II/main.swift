//
//  main.swift
//  Ugly Number II
//
//  Created by Soumya Jain on 05/07/20.
//  Copyright © 2020 Soumya Jain. All rights reserved.
//

import Foundation

print("Hello, World!")
/*
 Question Link: https://leetcode.com/explore/featured/card/july-leetcoding-challenge/544/week-1-july-1st-july-7th/3380/
 
 */
class Solution {
    
    func nthUglyNumber(_ n: Int) -> Int {
        var nums=[1]
        var idx_2 = 0, idx_3 = 0, idx_5 = 0
        for _ in 0..<n{
            let next2=nums[idx_2]*2
            let next3=nums[idx_3]*3
            let next5=nums[idx_5]*5
            let next=min(next2, min(next3,next5))
            nums.append(next)
            if next==next2 {
                idx_2+=1
            }
                
            if next == next3 {
                idx_3+=1
            }
                
            if next==next5 {
                idx_5+=1
            }
        }
        print(nums)
        return nums[n-1]
    }
}


print(Solution().nthUglyNumber(10))
