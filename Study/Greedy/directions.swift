//
//  directions.swift
//  Study
//
//  Created by 최대성 on 1/18/25.
//

import Foundation


func directions() {
    
    var mylocation = (1,1)
    var directionDic: [String : (Int, Int)] = [
    
        "r" : (0,1),
        "l" : (0,-1),
        "u" : (-1,0),
        "d" : (1,0)
    ]
    let input = Int(readLine()!)!
    
    let move = readLine()!.split(separator: " ").map { String($0) }
    
    for m in move {
        
        if let direcion = directionDic[m] {
            let nx = mylocation.1 + direcion.1
            let ny = mylocation.0 + direcion.0
            
            if nx >= 1, ny >= 1 , nx <= input, ny <= input {
                mylocation = (ny, nx)
            }
        }
    }
    
    
  
    print(mylocation)
}
