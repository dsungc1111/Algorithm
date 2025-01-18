//
//  Organic2.swift
//  Study
//
//  Created by 최대성 on 1/2/25.
//

import Foundation


func organic2() {
    
    let testCase = Int(readLine()!)!
    
    for _ in 0..<testCase {
        
        let input = readLine()!.split(separator: " ").map { Int($0)! }
        let M = input[0], N = input[1], K = input[2]
        
        var vis = Array(repeating: Array(repeating: false, count: N), count: M)
        var arr = Array(repeating: Array(repeating: 0, count: N), count: M)
        let directions = [(1,0), (0,1), (-1,0), (0,-1)]
        
        
        for _ in 0..<K {
            let input2 = readLine()!.split(separator: " ").map { Int($0)! }
            let x = input2[0], y = input2[1]
            
            arr[x][y] = 1
        }
        
        struct Position {
            let x: Int
            let y: Int
        }
        
        func bfsForOrganic(_ pos: Position) {
            
            var queue = QueueForOrganic2<Position>()
            queue.enqueue(pos)
            vis[pos.x][pos.y] = true
            
            while !queue.isEmpty {
                
                guard let current = queue.dequeue() else { break }
                
                let x = current.x
                let y = current.y
                
                for direction in directions {
                    let nx = x + direction.0
                    let ny = y + direction.1
                    
                    if nx >= 0 && nx < M && ny >= 0 && ny < N && !vis[nx][ny] && arr[nx][ny] == 1 {
                        vis[nx][ny] = true
                        queue.enqueue(Position(x: nx, y: ny))
                    }
                    
                    
                }
                
            }
            
            
        }
        
        var count = 0
        
        for x in 0..<M {
            for y in 0..<N {
                if arr[x][y] == 1 && !vis[x][y] {
                    bfsForOrganic(Position(x: x, y: y))
                    count += 1
                }
            }
        }
        print(count)
    }
}







struct QueueForOrganic2<T> {
    
    private var elements: [T] = []
    
    var isEmpty: Bool { elements.isEmpty }
    
    mutating func enqueue(_ element: T) {
        elements.append(element)
    }
    mutating func dequeue() -> T? {
        return isEmpty ? nil : elements.removeFirst()
    }
}
