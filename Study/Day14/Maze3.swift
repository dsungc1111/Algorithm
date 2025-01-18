//
//  Maze3.swift
//  Study
//
//  Created by 최대성 on 1/2/25.
//

import Foundation

func maze3() {
    
    let input = readLine()!.split(separator: " ").map { Int($0)! }
    let N = input[0], M = input[1]
    
    var arr = [[Int]]()
    var vis = Array(repeating: Array(repeating: false, count: M), count: N)
    
    for _ in 0..<N { arr.append(readLine()!.map{Int(String($0))!}) }
    
    let directions = [(1,0), (-1,0), (0,1), (0,-1)]
    
    struct Position {
        let x: Int
        let y: Int
        let dis: Int
    }
    
    var queue = Maze3Queue<Position>()
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
            
            if nx >= 0 && nx < N && ny >= 0 && ny < M && !vis[nx][ny] && arr[nx][ny] == 1
            {
                vis[nx][ny] = true
                queue.enqueue(Position(x: nx, y: ny, dis: dis + 1))
            }
        }
        
    }
    
}

struct Maze3Queue<T> {
    
    private var elements: [T] = []
    
    var isEmpty: Bool { elements.isEmpty }
    
    mutating func enqueue(_ element: T) {
        elements.append(element)
    }
    
    mutating func dequeue() -> T? {
        return isEmpty ? nil : elements.removeFirst()
    }
    
}
