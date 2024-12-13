//
//  main.swift
//  Study
//
//  Created by 최대성 on 12/13/24.
//

import Foundation

var heightList: [Int] = []
var fakeDwarf1: Int = 0
var fakeDwarf2: Int = 0
var sum = 0


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


//////



//var input = readLine()!.lowercased()
//
//
//let alphabet = Array("abcdefghijklmnopqrstuvwxyz")
//var list = [Int](repeating: 0, count: alphabet.count)
//
//
//for i in input {
//    for j in 0..<alphabet.count {
//        if i == alphabet[j] {
//            list[j] += 1
//        }
//    }
//}
//
//
//
//for i in list {
//    print(i, terminator: " ")
//}



/*
 
 한대 1분 -대 당A원.  1-6.  *5. =25
 두대 1분 - 대 당 B원.   2 * 3 = 6
 세대 1분 - 대 당 C원.  6*1 = 6
 
 
 1 ~ 2 : 한 대 A    5
 2 ~ 3 : 두 대 2*B 6
 3 ~ 5 : 세 대 3*C 3
 5 ~ 6 : 두 대 2*B 6
 6 ~ 8 : 한 대 A 5

 */

//let price = readLine()!.split(separator: " ").map { Int($0) }
//
//
//
//for i in 0..<3 {
//    var input = readLine()!.split(separator: " ")
//}
