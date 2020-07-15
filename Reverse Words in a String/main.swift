//
//  main.swift
//  Reverse Words in a String
//
//  Created by Soumya Jain on 16/07/20.
//  Copyright © 2020 Soumya Jain. All rights reserved.
//

import Foundation

print("Hello, World!")

/*
 Question Link: https://leetcode.com/explore/featured/card/july-leetcoding-challenge/546/week-3-july-15th-july-21st/3391/
 */

class Solution {
    func reverseWords(_ s: String) -> String {
        let array = s.components(separatedBy: " ")
        var res = ""
        for value in array.reversed() {
            if !value.isEmpty {
                res += "\(value) "
            }
        }
        return res.trimmingCharacters(in: .whitespacesAndNewlines)
    }
}
print(Solution().reverseWords("a good   example"))

