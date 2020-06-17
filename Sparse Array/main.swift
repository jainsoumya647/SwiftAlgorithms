//
//  main.swift
//  Sparse Array
//
//  Created by Soumya Jain on 18/06/20.
//  Copyright © 2020 Soumya Jain. All rights reserved.
//

import Foundation

print("Hello, World!")

/*
Problem Link: https://www.hackerrank.com/challenges/sparse-arrays/problem
 
Sample Input:

4
aba
baba
aba
xzxb
3
aba
xzxb
ab

*/
import Foundation

// Complete the matchingStrings function below.
func matchingStrings(strings: [String], queries: [String]) -> [Int] {
    var dict = [String: Int]()
    var result = [Int]()
    for string in strings {
        dict[string] = (dict[string] ?? 0) + 1
    }
    print(dict)
    for query in queries {
        result.append(dict[query] ?? 0)
    }
    return result
}

guard let stringsCount = Int((readLine()?.trimmingCharacters(in: .whitespacesAndNewlines))!)
else { fatalError("Bad input") }

let strings: [String] = AnyIterator{ readLine() }.prefix(stringsCount).map { $0 }

guard strings.count == stringsCount else { fatalError("Bad input") }

guard let queriesCount = Int((readLine()?.trimmingCharacters(in: .whitespacesAndNewlines))!)
else { fatalError("Bad input") }

let queries: [String] = AnyIterator{ readLine() }.prefix(queriesCount).map { $0 }

guard queries.count == queriesCount else { fatalError("Bad input") }

let res = matchingStrings(strings: strings, queries: queries)

print(res)
