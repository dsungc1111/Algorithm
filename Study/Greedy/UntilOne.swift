//
//  UntilOne.swift
//  Study
//
//  Created by 최대성 on 1/18/25.
//

import Foundation

func untilOne() {
    
    let input = readLine()!.split(separator: " ").map{ Int($0)! }
    var N = input[0], K = input[1]
    var count = 0
    
    while N > 1 {
        if N % K == 0 {
            print(N,K)
            count += 1
            N /= K
        } else {
            print("안나눠짐")
            N -= 1
            count += 1
        }
    }
    
    print(count)
}
