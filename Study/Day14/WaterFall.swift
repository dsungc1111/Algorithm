//
//  WaterFall.swift
//  Study
//
//  Created by 최대성 on 1/2/25.
//

import Foundation


func waterFall() {
    
    let N = Int(readLine()!)!
    
    var arr = [[Int]]()
    
    for _ in 0..<N {
        arr.append(readLine()!.split(separator: " ").map { Int($0)! })
    }
    
    let maxHeight = arr.flatMap{ $0 }.max()!
    var maxCount = 0
    
    let directions = [(1,0), (0,1), (-1,0), (0,-1)]
    
    struct Position {
        let x: Int
        let y: Int
    }
    
    func bfs(_ pos: Position, _ vis: inout [[Bool]], height: Int) {
        
        var queue = QueueForWaterFall<Position>()
        queue.enqueue(pos)
        
        
        while !queue.isEmpty {
            
            guard let current = queue.dequeue() else { break }
            let x = current.x
            let y = current.y
            
            for direction in directions {
                let nx = x + direction.0
                let ny = y + direction.1
                
                if nx >= 0 && nx < N && ny >= 0 && ny < N && !vis[nx][ny] && arr[nx][ny] > height {
                    vis[nx][ny] = true
                    queue.enqueue(Position(x: nx, y: ny))
                }
            }
            
        }
        
    }
    
    for height in 0...maxHeight {
        var count = 0
        var vis = Array(repeating: Array(repeating: false, count: N), count: N)
        
        for x in 0..<N {
            for y in 0..<N {
                if arr[x][y] > height && !vis[x][y] {
                    bfs(Position(x: x, y: y), &vis, height: height)
                    count += 1
                }
            }
        }
        
        maxCount = max(maxCount, count)
    }
    
    
    
    print(maxCount)
}



struct QueueForWaterFall<T> {
    
    private var elements: [T] = []
    
    var isEmpty: Bool {
        elements.isEmpty
    }
    
    mutating func enqueue(_ element: T) {
        elements.append(element)
    }
    
    mutating func dequeue() -> T? {
        return isEmpty ? nil : elements.removeFirst()
    }
    
}
