//
//  NewPerson.swift
//  Study
//
//  Created by 최대성 on 12/24/24.
//

import Foundation


func newperson() {
    
    let file = FileIO()
    
    let testCase = file.readInt()
    
    for _ in 0..<testCase {
        let people = file.readInt()
        
        var arr: [ (Int, Int) ] = []
        
        for _ in 0..<people {
            let input = [file.readInt(),file.readInt()]
            arr.append((input[0], input[1]))
        }
        
        arr.sort { $0.0 < $1.0 }
        var count = 0
        var min = Int.max
        
        
        for people in arr {
            
            let rank = people.1
            if rank < min {
                min = rank
                count += 1
            }
        }
        print(count)
        
    }
    
}


final class FileIO {
    private var buffer:[UInt8]
    private var index: Int
    
    init(fileHandle: FileHandle = FileHandle.standardInput) {
        buffer = Array(fileHandle.readDataToEndOfFile())+[UInt8(0)] // 인덱스 범위 넘어가는 것 방지
        index = 0
    }
    
    @inline(__always) private func read() -> UInt8 {
        defer { index += 1 }
        
        return buffer.withUnsafeBufferPointer { $0[index] }
    }
    
    @inline(__always) func readInt() -> Int {
        var sum = 0
        var now = read()
        var isPositive = true
        
        while now == 10
                || now == 32 { now = read() } // 공백과 줄바꿈 무시
        if now == 45{ isPositive.toggle(); now = read() } // 음수 처리
        while now >= 48, now <= 57 {
            sum = sum * 10 + Int(now-48)
            now = read()
        }
        
        return sum * (isPositive ? 1:-1)
    }
    
    @inline(__always) func readString() -> String {
        var str = ""
        var now = read()
        
        while now == 10
                || now == 32 { now = read() } // 공백과 줄바꿈 무시
        
        while now != 10
                && now != 32 && now != 0 {
            str += String(bytes: [now], encoding: .ascii)!
            now = read()
        }
        
        return str
    }
}