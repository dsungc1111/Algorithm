//
//  acculatedSum.swift
//  Study
//
//  Created by 최대성 on 12/21/24.
//

import Foundation


func acculatedSum() {
    
    let input = readLine()!.split(separator: " ").map { Int($0)! }
    
    let N = input[0], K = input[1]
    var start = 0, end = 2*K
    
    var sum = 0
    var arr = [Int](repeating: 0, count: 1000001)
    
    
    for _ in 0..<N {
        let ice = readLine()!.split(separator: " ").map { Int($0)! }
        arr[ice[1]] = ice[0]
        if ice[1] <= end   { sum += ice[0] }
    }
    var maxSum = sum
    
    while end < 1000000 {
        end += 1
        sum -= arr[start]
        sum += arr[end]
        maxSum = max(sum, maxSum)
        start += 1
    }
    print(maxSum)
}



/*
 
 let N = Int(readLine()!)!
 
 var arr: [Int] = []
 
 for i in 1...N { arr.append(i) }
 
 var count = 0
 var end = 0
 var sum = 0
 
 
 for start in 0..<N {
     
     while sum < N && end < N {
         sum += arr[end]
         end += 1
     }
     if sum == N {
         count += 1
     }
     sum -= arr[start]
 }
 print(count)
 */
