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


let truck = readLine()!.split(separator: " ").map { Int($0)! }


func priceOfTruck() {
    

    print(truck)
}
