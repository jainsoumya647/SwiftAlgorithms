//
//  main.swift
//  Arranging Coins
//
//  Created by Soumya Jain on 03/07/20.
//  Copyright © 2020 Soumya Jain. All rights reserved.
//

import Foundation

print("Hello, World!")

/*
 Solution 1
 Time: O(N)
 Space:O(1)
 */
class Solution1 {
    func arrangeCoins(_ n: Int) -> Int {
        var n = n
        var count = 0;
        var i = 1;
        while (n >= 0) {
            n = n - i;
            count += 1
            i += 1
        }
        return count - 1;
    }
}
guard let n = Int((readLine()?.trimmingCharacters(in: .whitespacesAndNewlines))!)
else { fatalError("Bad input") }
print(Solution1().arrangeCoins(n))



/*
 Solution 2
 Time: O(log(N))
 Space:O(1)
 */

class Solution2 {
    func arrangeCoins(_ n: Int) -> Int {
        var left = 0, right = n;
        var k = 0, curr = 0
            while (left <= right) {
                k = left + (right - left) / 2;
                curr = k * (k + 1) / 2;
         
                if (curr == n){
                    return k
                }
         
                if (n < curr) {
                    right = k - 1;
                } else {
                    left = k + 1;
                }
            }
            return right;
    }
}
guard let n = Int((readLine()?.trimmingCharacters(in: .whitespacesAndNewlines))!)
else { fatalError("Bad input") }
print(Solution2().arrangeCoins(n))


/*
 Solution 3
 Time: O(1)
 Space:O(1)
 */
class Solution3 {
    func arrangeCoins(_ n: Int) -> Int {
        return Int(sqrt(2 * Double(n) + 0.25) - 0.5)
    }
}
guard let n = Int((readLine()?.trimmingCharacters(in: .whitespacesAndNewlines))!)
else { fatalError("Bad input") }
print(Solution3().arrangeCoins(n))
