//
//  main.swift
//  Array Manipulation
//
//  Created by Soumya Jain on 26/06/20.
//  Copyright © 2020 Soumya Jain. All rights reserved.
//

import Foundation

print("Hello, World!")

/*
Problem Link: https://www.hackerrank.com/challenges/crush/problem
 
Sample Input:

5 3
1 2 100
2 5 100
3 4 100

*/


func arrayManipulation(n: Int, queries: [[Int]]) -> Int {
    var maxValue = 0
    var sum = 0
    var array = Array(repeating: 0, count: n+2)
    for query in queries {
//        print(query)
        let a = query[0]
        let b = query[1]
        let k = query[2]
        array[a] += k
        array[b+1] -= k
    }
    for value in array {
        sum += value
        if sum > maxValue {
            maxValue = sum
        }
    }
    return maxValue
}

guard let nmTemp = readLine() else { fatalError("Bad input") }
let nm = nmTemp.split(separator: " ").map{ String($0) }

guard let n = Int(nm[0].trimmingCharacters(in: .whitespacesAndNewlines))
else { fatalError("Bad input") }

guard let m = Int(nm[1].trimmingCharacters(in: .whitespacesAndNewlines))
else { fatalError("Bad input") }

let queries: [[Int]] = AnyIterator{ readLine() }.prefix(m).map {
    let queriesRow: [Int] = $0.split(separator: " ").map {
        if let queriesItem = Int($0.trimmingCharacters(in: .whitespacesAndNewlines)) {
            return queriesItem
        } else { fatalError("Bad input") }
    }

    guard queriesRow.count == 3 else { fatalError("Bad input") }

    return queriesRow
}

guard queries.count == m else { fatalError("Bad input") }

let result = arrayManipulation(n: n, queries: queries)

print(result)
