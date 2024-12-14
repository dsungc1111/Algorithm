//
//  10808.swift
//  Study
//
//  Created by 최대성 on 12/14/24.
//

import Foundation


var input = readLine()!

func findAlphaberCount() {
    let alphabet = Array("abcdefghijklmnopqrstuvwxyz")
    var list = [Int](repeating: 0, count: alphabet.count)


    for i in input {
        for j in 0..<alphabet.count {
            if i == alphabet[j] {
                list[j] += 1
            }
        }
    }

    for i in list {
        print(i, terminator: " ")
    }

}

