//
//  main.swift
//  Hamming Distance
//
//  Created by Soumya Jain on 06/07/20.
//  Copyright © 2020 Soumya Jain. All rights reserved.
//

import Foundation

print("Hello, World!")

/*
 Question Link: https://leetcode.com/explore/featured/card/july-leetcoding-challenge/544/week-1-july-1st-july-7th/3381/
 */

extension String {
  subscript(_ i: Int) -> String {
    let idx1 = index(startIndex, offsetBy: i)
    let idx2 = index(idx1, offsetBy: 1)
    return String(self[idx1..<idx2])
  }
}



class Solution {
    func hammingDistance(_ x: Int, _ y: Int) -> Int {
        var xStr = String(x, radix: 2)
        var yStr = String(y, radix: 2)
        var temp = ""
        let diff = abs(xStr.count - yStr.count)
        if diff > 0 {
            for _ in 0..<diff {
                temp += "0"
            }
        }
        
        if xStr.count < yStr.count {
            xStr = temp + xStr
        } else if xStr.count > yStr.count {
            yStr = temp + yStr
        }
        var count = 0
        print(xStr)
        print(yStr)
        for i in 0..<xStr.count {
            if xStr[i] != yStr[i] {
                count += 1
            }
        }
        return count
    }
}

print(Solution().hammingDistance(4, 2))
