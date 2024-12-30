//
//  goodword.swift
//  Study
//
//  Created by 최대성 on 12/28/24.
//

import Foundation


func goodword() {
    
    let N = Int(readLine()!)!
    
    var arr: [Character] = []
    var count = 0
    
    for _ in 0..<N {
        
        let input = readLine()!
        arr = []
        
        for i in input {
         
            if let a = arr.last, a == i {
                arr.removeLast()
            } else {
                arr.append(i)
            }
            
        }
     
        if arr.isEmpty { count += 1}
    }
    print(count)
}
