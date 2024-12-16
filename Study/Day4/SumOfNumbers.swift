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
    
   
    var start = 1
    var count = 0
    var sum = 1
    var end = 1
    
    while start <= N {
        
        if sum == N {
            count += 1
            sum -= start
            start += 1
        } else if sum < N {
            end += 1
            sum += end
        } else {
            sum -= start
            start += 1
        }
        
        
    }
    print(count)
}
