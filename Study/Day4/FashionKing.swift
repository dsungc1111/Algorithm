//
//  FashionKing.swift
//  Study
//
//  Created by 최대성 on 12/16/24.
//

import Foundation


func fashionKing() {
  
    let testCase = Int(readLine()!)!
    var count = 0
    
    for _ in 0..<testCase {
        var dic = [String : [String]]()
        let n = Int(readLine()!)!
        
        for _ in 0..<n {
            
            let input = readLine()!.components(separatedBy: " ").map { String($0) }
            let clothes = input[0], category = input[1]
            
            if dic.keys.contains(category) {
                dic[category]!.append(clothes)
            } else {
                dic[category] = [clothes]
            }
            
        }
        
        let result = dic.values.reduce(1) { $0 * ($1.count + 1) } - 1
        print(result)
    }
    
    
    
}
