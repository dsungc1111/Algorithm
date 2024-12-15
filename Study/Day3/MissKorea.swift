//
//  MissKorea.swift
//  Study
//
//  Created by 최대성 on 12/15/24.
//

import Foundation


func findRecord() {
    
        
    let N = Int(readLine()!)!
    let pat = readLine()!.map { String($0) }
    
    let mid = pat.firstIndex(of: "*")! // * 로 앞뒤 끊어주고 string.index
    let prefix = pat.prefix(mid)
    let suffix = pat.suffix(pat.count - 1 - mid)
    
    
    
    for _ in 0..<N {
        
        let input = readLine()!.map { String($0) }
        
        let a = input.prefix(prefix.count)
        let b = input.suffix(suffix.count)
        
        if input.count < a.count + b.count {
            print("NE")
        } else {
            if prefix == a && suffix == b { print("DA") }
            else { print("NE") }
        }

    }
}

