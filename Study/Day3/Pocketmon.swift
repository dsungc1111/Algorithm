//
//  Pocketmon.swift
//  Study
//
//  Created by 최대성 on 12/16/24.
//

import Foundation


func findPocketmon() {
    
    let pocketmon = readLine()!.split(separator: " ").map { Int($0)! }
    
    let N = pocketmon[0], M = pocketmon[1]
    
    
    var dict1: [String : Int] = [:]
    var dict2: [Int : String] = [:]
    
    for i in 0..<N {
        let input = readLine()!
        
        dict1[input] = i
        dict2[i] = input
    }
    
    
    for _ in 0..<M {
        let input = readLine()!
        
        // input > string
        if Int(input) == nil {
            print(dict1[input]! + 1)
        } else {
            print(dict2[Int(input)! - 1]!)
        }
        
    }
    
}
