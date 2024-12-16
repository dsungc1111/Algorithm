//
//  Work.swift
//  Study
//
//  Created by 최대성 on 12/16/24.
//

import Foundation



func ThingsTodo() {
    
    let input = readLine()!.components(separatedBy: " ").map { Int($0)! }
    
    let a = input[0], b = input[1], c = input[2], d = input[3]
    var tired = 0
    var work = 0
    
   
    for _ in 0..<24 {
        if tired < 0 {
            tired = 0
        }
        if tired + a <= d {
            tired += a
            work += b
        } else {
            tired -= c
        }
    }
    
    print(work)
}
