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
    // player 수만큼 선수 이름 입력받아서 playerArray배열에 넣어줘 그런데 이제 맨 앞글자만
    for _ in 0..<playerCount {
        let player = String(readLine()!.first!)
        playerArray.append(player)
    }
    
    // 받은 플레이어를 딕셔너리에 넣어줄건데
    for i in playerArray {
        // 만약에 똑같은 놈이 있다? +1
//        if lastNameCountDic.keys.contains(i) {
//            lastNameCountDic[i]! += 1
//        } else {
//            // 처음 드가는 놈이다? 1 넣어주고
//            lastNameCountDic[i] = 1
//        }
        
        lastNameCountDic[i, default: 0] += 1
        
    }
    
    // value가 count니까 5 넘는 놈들 필터해서 정렬해주고 join해서 달라붙게
    let result = lastNameCountDic.filter { $0.value >= 5 }.keys.sorted().joined()
    print(result == "" ? "PREDAJA" : result)
}
