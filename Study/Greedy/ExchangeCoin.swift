//
//  ExchangeCoin.swift
//  Study
//
//  Created by 최대성 on 1/18/25.
//

import Foundation


func exchangeCoin() {
    
    var n = 1260
    var count = 0
    
    let arr = [500, 100, 50, 10]
    
    for coin in arr {
        count += n / coin
        n = n % coin
    }
    
    print(count)
}
