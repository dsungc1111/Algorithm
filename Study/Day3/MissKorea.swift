//
//  MissKorea.swift
//  Study
//
//  Created by 최대성 on 12/15/24.
//

import Foundation


func findRecord() {
    let n = Int(readLine()!)! // 문자열 비교할 개수
    let pattern = readLine()! // 패턴 문자열 (e.g., "a*bc")

    // 패턴 분리: '*'를 기준으로 접두사와 접미사 추출
    // firstIndex > 해당요소가 들어있는 첫번째 인덱스
    if let starIndex = pattern.firstIndex(of: "*") {
        
        let prefix = String(pattern[..<starIndex])   // index기준으로 앞뒤를 나눠버려
        let suffix = String(pattern[pattern.index(after: starIndex)...])

        for _ in 0..<n {
            let input = readLine()!
            
            // 조건 1: 접두사와 접미사의 총 길이가 입력 문자열보다 길면 매칭 불가
            if prefix.count + suffix.count > input.count {
                print("NE")
            } else {
                // 접두사와 접미사를 비교
                let prefixMatch = input.hasPrefix(prefix)   // a
                let suffixMatch = input.hasSuffix(suffix)   // d
                
                if prefixMatch && suffixMatch {
                    print("DA")
                } else {
                    print("NE")
                }
            }
        }
    }
}

