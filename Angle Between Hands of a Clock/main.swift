//
//  main.swift
//  Angle Between Hands of a Clock
//
//  Created by Soumya Jain on 15/07/20.
//  Copyright © 2020 Soumya Jain. All rights reserved.
//

import Foundation

print("Hello, World!")

/*
 Question Link: https://leetcode.com/explore/featured/card/july-leetcoding-challenge/545/week-2-july-8th-july-14th/3390/
 */


class Solution {
    func angleClock(_ hour: Int, _ minutes: Int) -> Double {
        let minuteDegree = Double(minutes) * 6
        let hourDegree = Double((hour%12)*60 + minutes) * 0.5
        
        var diff = abs(hourDegree - minuteDegree)
        if diff > 180 {
            diff = 360 - diff
        }
        return diff
    }
}
print(Solution().angleClock(12, 30))
