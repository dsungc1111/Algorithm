//
//  Palindrome.swift
//  Study
//
//  Created by 최대성 on 12/14/24.
//

import Foundation


var palindrome = Array(readLine()!)

var count = 0

func isPalindrome() {
    
    let max = palindrome.count / 2 // 반나눠서
    for i in 0..<max {
        if palindrome[i] == palindrome[palindrome.count - 1 - i] {
            count += 1
        }
    }
    
    print(count == max ? 1: 0)
}

/*
 count == 5
 
 01234
 123321
 
 */
