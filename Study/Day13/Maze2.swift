//
//  Maze2.swift
//  Study
//
//  Created by 최대성 on 1/1/25.
//

import Foundation

// 최소한의 수 -> 

func maze2() {
    
    let input = readLine()!.split(separator: " ").map { Int($0)! }
    
    let N = input[0], M = input[1]
    var arr = [[Int]]()
    
    let directions = [(1,0), (0,1), (-1,0), (0,-1)]
    var vis = Array(repeating: Array(repeating: false, count: M), count: N)
    
    for _ in 0..<N {
        arr.append(readLine()!.map{ Int(String($0))! })
    }
    
    struct Position {
        let x: Int
        let y: Int
        let dis: Int
    }
    
    var queue = QueueMaze2<Position>()
    
    queue.enqueue(Position(x: 0, y: 0, dis: 1))
    vis[0][0] = true
    
    while !queue.isEmpty {
        
        guard let current = queue.dequeue() else { break }
        
        let x = current.x
        let y = current.y
        let dis = current.dis
        
        if x == N - 1 && y == M - 1 {
            print(dis)
            return
        }
        for direction in directions {
            
            let nx = x + direction.0
            let ny = y + direction.1
            
            if nx >= 0 && ny >= 0 && nx < N && ny < M && arr[nx][ny] == 1 && !vis[nx][ny] {
                vis[nx][ny] = true
                queue.enqueue(Position(x: nx, y: ny, dis: dis + 1))
            }
            
            
        }
    }
}




struct QueueMaze2<T> {
    
    private var elements: [T] = []
    
    var isEmpty: Bool { elements.isEmpty }
    
    mutating func enqueue(_ element: T) { elements.append(element) }
    mutating func dequeue() -> T? {
        return isEmpty ? nil : elements.removeFirst()
    }
}
