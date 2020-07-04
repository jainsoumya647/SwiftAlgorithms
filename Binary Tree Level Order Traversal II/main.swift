//
//  main.swift
//  Binary Tree Level Order Traversal II
//
//  Created by Soumya Jain on 05/07/20.
//  Copyright © 2020 Soumya Jain. All rights reserved.
//

import Foundation

print("Hello, World!")

/*
 Question Link: https://leetcode.com/explore/challenge/card/july-leetcoding-challenge/544/week-1-july-1st-july-7th/3378/
 
 */


class Solution {
    func levelOrderBottom(_ root: TreeNode?) -> [[Int]] {
        var result = [[Int]]()
        guard let node = root else {
            return result
        }
        var parent = [node]
        while !parent.isEmpty {
            var size = parent.count
            var array = [Int]()
            while(size != 0) {
                guard let currentNode = parent.first else { break }
                array.append(currentNode.val)
                parent.removeFirst()
                if let left = currentNode.left {
                    parent.append(left)
                }
                if let right = currentNode.right {
                    parent.append(right)
                }
                size -= 1
            }
            
            result.append(array)
        }
        
        result = result.reversed()
        return result
    }
}

