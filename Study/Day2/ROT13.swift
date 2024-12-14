//
//  ROT13.swift
//  Study
//
//  Created by 최대성 on 12/14/24.
//

import Foundation


let inputROT = readLine()!
var changedString = ""


func getROT13() {
    
    for string in inputROT {
        
        var rot13 = string.asciiValue! // 아스키 딸깍
        
        if rot13 >= Character("a").asciiValue! && rot13 <= Character("z").asciiValue! {
            rot13 += 13
            if rot13 > 90 {
                rot13 -= 26
            }
        } else if rot13 >= Character("A").asciiValue! && rot13 <= Character("Z").asciiValue! {
            rot13 += 13
            if rot13 > 122 {
                rot13 -= 26
            }
        }
        changedString += "\(UnicodeScalar(rot13))" // 아스키 > 문자열 딸깍
    }
    
    print(changedString)
}

/*
 90 넘어갔을 때랑
 90이  z
 91이면 a
 a는 65
 
 91 - 65 = 26
 
 
 122 넘어갔을 때
 
 
 */


