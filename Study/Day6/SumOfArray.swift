//
//  SumOfArray.swift
//  Study
//
//  Created by 최대성 on 12/18/24.
//

import Foundation



func sumOfArray() {
    
    let input = readLine()!.split(separator: " ").map { Int($0)! }
    
    
    var sumArr: [Int] = []
    let arrayA = readLine()!.split(separator: " ").map { Int($0)! }
    let arrayB = readLine()!.split(separator: " ").map { Int($0)! }
    
   sumArr = arrayA + arrayB
    
    sumArr.sort()
    
    // 반복문 하면 안됨 왜? 배열 최대 크기가 10억이야 > 1초 넘어
    
    
    let a = sumArr.map { String($0) }.joined(separator: " ")
    
    print(a)
}
