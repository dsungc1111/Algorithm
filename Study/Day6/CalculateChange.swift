//
//  CalculateChange.swift
//  Study
//
//  Created by 최대성 on 12/18/24.
//

import Foundation



func calculateChange() {
    
    let money = 1000
    
    let input = Int(readLine()!)!
    
    var change = money - input
    var count = 0
    /*
     500엔, 100엔, 50엔, 10엔, 5엔, 1엔
     */
    
    while change > 0 {
        
        if change >= 500 {
            count += change / 500
            change = change % 500
        } else if change < 500 && change >= 100 {
            count += change / 100
            change = change % 100
        } else if change < 100 && change >= 50 {
            count += change / 50
            change = change % 50
        } else if change < 50 && change >= 10 {
            count += change / 10
            change = change % 10
        } else if change < 10 && change >= 5 {
            count += change / 5
            change = change % 5
        } else {
            count += change
            change = 0
        }
    }
    print(count)
}
    
    
    
