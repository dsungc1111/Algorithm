//
//  Oil.swift
//  Study
//
//  Created by 최대성 on 12/20/24.
//

import Foundation


func minimumOilPrice() {
    
    let numOFCities = Int(readLine()!)!
    
    let lengthOfRoad = readLine()!.split(separator: " ").map { Int($0)! }
    
    let priceOFOil = readLine()!.split(separator: " ").map { Int($0)! }
    
    var min = priceOFOil[0]
    var result = 0
    
    for i in 0..<numOFCities - 1 {
        
        if priceOFOil[i] < min {
            print(priceOFOil[i], min)
            min = priceOFOil[i]
        }
        result += min * lengthOfRoad[i]
    }
    
    
    print(result)
}
