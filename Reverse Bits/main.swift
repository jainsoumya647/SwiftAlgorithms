//
//  main.swift
//  Reverse Bits
//
//  Created by Soumya Jain on 15/07/20.
//  Copyright © 2020 Soumya Jain. All rights reserved.
//

import Foundation

print("Hello, World!")

/*
 Question Link: https://leetcode.com/explore/featured/card/july-leetcoding-challenge/545/week-2-july-8th-july-14th/3388/
 */


class Solution {
    func reverseBits(_ n: Int) -> Int {
        var original = n
        var rev = 0
        for _ in 0..<32 {
            rev <<= 1
            rev |= (original & 1)
            original >>= 1
        }
        return rev
    }
}

print(Solution().reverseBits(10))
