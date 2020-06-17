//
//  main.swift
//  SwiftAlgorithms
//
//  Created by Soumya Jain on 17/06/20.
//  Copyright © 2020 Soumya Jain. All rights reserved.
//

import Foundation

// How to take input of an integer and a array?

print("Hello, World!")

guard let n = readLine() else { fatalError("Bad input") }
guard let arrayString = readLine() else { fatalError("Bad input") }

let array: [Int] = arrayString.split(separator: " ").map {
    if let qItem = Int($0.trimmingCharacters(in: .whitespacesAndNewlines)) {
        return qItem
    } else { fatalError("Bad input") }
}
print(n)
print(array)

/*
Input Format:
 2
 2 3 4 5 6 7
 
 It will print the input Array.
*/
