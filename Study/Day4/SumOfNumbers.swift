//
//  SumOfNumbers.swift
//  Study
//
//  Created by 최대성 on 12/16/24.
//

import Foundation


func sumOfNums() {
    
    let N = Int(readLine()!)!
    var arr = [Int]()
    
    for i in 1...N { arr.append(i) }
    var end = 0
    var sum = 0
    var count = 0
   
    for start in 0..<N {
        
        while sum < N && end < N {
            sum += arr[end]
            end += 1
        }
        
        if sum == N { count += 1 }
        
        sum -= arr[start]
    }
    print(count)
}
