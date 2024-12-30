//
//  fashionGhin.swift
//  Study
//
//  Created by 최대성 on 12/27/24.
//

import Foundation

func fashionShin() {
    
    let T = Int(readLine()!)!
    
    
    
    for _ in 0..<T {
        
        let num = Int(readLine()!)!
        var categoryCounts = [String : Int]()
        
        for _ in 0..<num {
            let input = readLine()!.split(separator: " ").map { String($0) }
            let category = input[1]
            
            categoryCounts[category, default: 0] += 1
            
        }
        
        let result = categoryCounts.values.reduce(1) { $0 * ($1 + 1) } - 1
        print(result)
        
    }
    
}
