//
//  BasketBall.swift
//  Study
//
//  Created by 최대성 on 12/14/24.
//

import Foundation

/*
 누가 선발인지 기억하기 쉽게 하기 위해 성의 첫 글자가 같은 선수 5명을 선발하려고 한다
 */

let playerCount = Int(readLine()!)!
var playerArray: [String] = []
var lastNameCountDic = [String : Int]()




func tomorrowGameSet() {
    
    for _ in 0..<playerCount {
        let player = String(readLine()!.first!)
        playerArray.append(player)
    }
    
    for i in playerArray {
        if lastNameCountDic.keys.contains(i) {
            lastNameCountDic[i]! += 1
        } else {
            lastNameCountDic[i] = 1
        }
    }
    
    
    let result = lastNameCountDic.filter { $0.value >= 5 }.keys.sorted().joined()
    print(result == "" ? "PREDAJA" : result)
}
