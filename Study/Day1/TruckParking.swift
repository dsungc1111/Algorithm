//
//  2979.swift
//  Study
//
//  Created by 최대성 on 12/14/24.
//

import Foundation


/*
 한 대 > 1분에 A원
 2 대 > 1분에 B원 (대 당)
 3 대 > 1분에 C원 (대 당)
 
 요금 A,B,C
 
 1 ~ 2 > 1대 * 1h * A
 2 ~ 3 > 2대 * 1h * B
 3 ~ 5 > 3대 *2시간 * C
 5 ~ 6 > 2대 * 1 * B
 6 ~ 8 > 1대 * 2 * A
 */


//func priceOfTruck() {
//    
//    let truck = readLine()!.components(separatedBy: " ").map { Int($0)! }
//    let A = truck[0], B = truck[1], C = truck[2]
//    
//    var cnts = [Int](repeating: 0, count: 101)
//    var sum = 0
//    
//    for _ in 0..<3 {
//        let input = readLine()!.components(separatedBy: " ").map { Int($0)! }
//        (input[0]..<input[1]).forEach { cnts[$0] += 1 }
//    }
//    
//    
//  
//}


func priceOfTruckParking() {
    let priceTag = readLine()!.components(separatedBy: " ").map { Int($0)! }
    let A = priceTag[0], B = priceTag[1], C = priceTag[2]
    
    var cnts = [Int](repeating: 0, count: 101)
    var sum = 0
    
    for _ in 0..<3 {
        let input = readLine()!.components(separatedBy: " ").map { Int($0)! }
        
        for i in input[0]..<input[1] {
            cnts[i] += 1
        }
    }
    
    
    for i in cnts {
        if i == 1 {
            sum += i*A
        } else if i == 2 {
            sum += i*B
        } else if i == 3 {
            sum += i*C
        }
    }
    
    print(sum)
    
}

