//
//  main.swift
//  Same Tree
//
//  Created by Soumya Jain on 15/07/20.
//  Copyright © 2020 Soumya Jain. All rights reserved.
//

import Foundation

print("Hello, World!")

/*
 Question Link: https://leetcode.com/explore/featured/card/july-leetcoding-challenge/545/week-2-july-8th-july-14th/3389/
 */



public class TreeNode {
    public var val: Int
    public var left: TreeNode?
    public var right: TreeNode?
    public init() { self.val = 0; self.left = nil; self.right = nil; }
    public init(_ val: Int) { self.val = val; self.left = nil; self.right = nil; }
    public init(_ val: Int, _ left: TreeNode?, _ right: TreeNode?) {
        self.val = val
        self.left = left
        self.right = right
    }
}

class Solution {
    func isSameTree(_ p: TreeNode?, _ q: TreeNode?) -> Bool {
        guard let firstTree = p, let secondTree = q else {
            return (p == nil && q == nil)
        }
        guard firstTree.val == secondTree.val else {
            return false
        }
        return isSameTree(firstTree.left, secondTree.left) && isSameTree(firstTree.right, secondTree.right)
    }
}

