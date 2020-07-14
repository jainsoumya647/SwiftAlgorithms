//
//  main.swift
//  Flatten a Multilevel Doubly Linked List
//
//  Created by Soumya Jain on 15/07/20.
//  Copyright © 2020 Soumya Jain. All rights reserved.
//

import Foundation

print("Hello, World!")

/*
 Question Link: https://leetcode.com/explore/featured/card/july-leetcoding-challenge/545/week-2-july-8th-july-14th/3386/
 */



public class Node {
    public var val: Int
    public var prev: Node?
    public var next: Node?
    public var child: Node?
    public init(_ val: Int) {
        self.val = val
        self.prev = nil
        self.next = nil
        self.child  = nil
    }
}


class Solution {
    func flatten(_ head: Node?) -> Node? {
        if head == nil { return head }
        
        var p = head
        while p != nil {
            // case 1: No child, proceed
            if p?.child == nil {
                p = p?.next
                continue
            }
            
            // case 2: got child, find the tail of the child and link it to p.next
            var temp = p?.child
            
            //find the tail of the child
            while temp?.next != nil {
                temp = temp?.next
            }
            
            // connect tail with p.next, if it is not null
            temp?.next = p?.next
            
            if p?.next != nil { p?.next!.prev = temp }
            
            //connect p with p.child, and remove p.child
            p?.next = p?.child
            p?.child?.prev = p
            p?.child = nil
        }
        return head
    }
}
