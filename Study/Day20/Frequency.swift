//
//  Frequency.swift
//  Study
//
//  Created by 최대성 on 1/17/25.
//

import Foundation

func frequency() {
    
    let input = readLine()!.split(separator: " ").map { Int($0)! }
    let arr = readLine()!.split(separator: " ").map { Int($0)! }
    
    var dic = [Int : Int]() // 숫자 빈도수
    var indexDic = [Int : Int]() // 숫자의 첫 등장 순서 저장
    
    for (index, num) in arr.enumerated() { // enumerated를 통해 요소와 요소의 인덱스 추출
        dic[num, default: 0] += 1 // 일반 딕셔너리에 숫자와 빈도수 저장
        if indexDic[num] == nil { indexDic[num] = index } // >> Index를 담는 dic에 저장
    }
    let sortedDic = dic.keys.sorted() { // 딕셔너리의 키값 > 숫자만 가져와서
        // 정렬할건데
        // 숫자의 빈도를 기준으로 내림차순
        if dic[$0]! == dic[$1]! {
            return indexDic[$0]! < indexDic[$1]!
        } else {
            // 빈도가 같으면
            // 등장순서에 따라 오름차순 정렬
            return dic[$0]! > dic[$1]!
        }
    }
    for num in sortedDic {
        for _ in 0..<dic[num]! {
            print(num, terminator: " ")
        }
    }
}
