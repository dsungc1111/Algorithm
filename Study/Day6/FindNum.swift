//
//  FindNum.swift
//  Study
//
//  Created by 최대성 on 12/18/24.
//

import Foundation

func findNum() {
    
    let N = Int(readLine()!)!
    let arrayN = readLine()!.split(separator: " ").map { Int($0)! }.sorted()
    let M = Int(readLine()!)!
    let arrayM = readLine()!.split(separator: " ").map { Int($0)! }
    
    for i in arrayM {
        var start = 0
        var end = N - 1
        var count = 0
        
        while start <= end {
            let mid = (start + end) / 2
            if arrayN[mid] == i {
                count += 1
                break
            } else if arrayN[mid] > i {
                end = mid - 1
                
            } else if arrayN[mid] < i {
                start = mid + 1
            }
        }
        print(count)
    }
    
}
