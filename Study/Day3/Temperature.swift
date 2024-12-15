//
//  Temperature.swift
//  Study
//
//  Created by 최대성 on 12/15/24.
//

import Foundation

/*
 10 2
 3 -2 -4 -9 0 3 7 13 8 -3
 */

func findMaxTemp() {
    let totalDays = readLine()!.split(separator: " ").map { Int($0)! }
    let days = totalDays[0], continuedDays = totalDays[1]
    
    let tempList = readLine()!.split(separator: " ").map { Int($0)! }

    var totalSum = [Int](repeating: 0, count: days + 1)
    
    
    for i in 1...days {
        totalSum[i] = totalSum[i-1] + tempList[i-1]
    }
    
    var answer = Int.min
    
    for i in continuedDays...days {
        answer = max(answer, totalSum[i] - totalSum[i-continuedDays] )
    }

    print(answer)
    
}
