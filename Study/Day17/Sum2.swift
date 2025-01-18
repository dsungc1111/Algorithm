//
//  Sum2.swift
//  Study
//
//  Created by 최대성 on 1/7/25.
//

import Foundation


func sum2() {
    
    let input = readLine()!.split(separator: " ").map { Int($0)! }
    let N = input[0], M = input[1]
    
    
    let nums = readLine()!.split(separator: " ").map { Int($0)! }
    
 
    var count = 0
    
    for i in 0..<N {
        var sum = 0
        for j in i..<N {
            sum += nums[j]
            if sum == M { count += 1 }
        }
    }
    print(count)
}
