//
//  File.swift
//  Study
//
//  Created by 최대성 on 12/14/24.
//

import Foundation


var heightList: [Int] = []
var fakeDwarf1: Int = 0
var fakeDwarf2: Int = 0
var sum = 0

func findDwarf() {
    for i in 0..<9 {
        var input = Int(readLine()!)!
        heightList.append(input)
    }

    for height in heightList {
        sum += height
    }

    sum -= 100

    //print("sum =", sum)


    for i in 0..<heightList.count - 1 {
        for j in i+1...8 {
            if heightList[i] + heightList[j] == sum {
                fakeDwarf1 = i
                fakeDwarf2 = j
                break
            }
        }
    }


    heightList.remove(at: fakeDwarf1)
    heightList.remove(at: fakeDwarf2 - 1)


        
    for real in heightList.sorted() {
        print(real)
    }
}


