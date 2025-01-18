//
//  Number2.swift
//  Study
//
//  Created by 최대성 on 1/16/25.
//

import Foundation


func number2() {
    
    let N = Int(readLine()!)!
    let cards = readLine()!.split(separator: " ").map { Int($0)! }
    let M = Int(readLine()!)!
    let find = readLine()!.split(separator: " ").map { Int($0)! }
    
    
    var dic = [Int : Int]()
    
    for num in find {
        dic[num] = 0
    }
    
    for num in cards {
       dic[num, default: 0] += 1
    }
    
    for i in find {
        print(dic[i]!, terminator: " ")
    }
    
}
