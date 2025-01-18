//
//  Picture.swift
//  Study
//
//  Created by 최대성 on 1/7/25.
//

import Foundation


func picture() {
    
    let input = readLine()!.split(separator: " ").map { Int($0)! }
    let n = input[0], m = input[1] // 세로 가로 순
    var arr = [[Int]]()
    let directions = [(1,0), (-1,0), (0,1), (0,-1)]
    var vis = Array(repeating: Array(repeating: false, count: m), count: n)
    
    
    for _ in 0..<n {
        arr.append( readLine()!.split(separator: " ").map { Int($0)! } )
    }
    
    struct Position {
        let x: Int
        let y: Int
    }
    
    func bfs(position: Position) -> Int {
        
        var queue = QueueForPic<Position>()
        queue.enqueue(Position(x: position.x, y: position.y))
        vis[position.x][position.y] = true
        var area = 1
        
        
        while !queue.isEmpty {
            
            guard let current = queue.dequeue() else { break }
            
            let x = current.x
            let y = current.y
            
            for direction in directions {
                let nx = x + direction.0
                let ny = y + direction.1
                
                if nx >= 0, ny >= 0, nx < n, ny < m, !vis[nx][ny], arr[nx][ny] == 1 {
                    queue.enqueue(Position(x: nx, y: ny))
                    vis[nx][ny] = true
                    area += 1
                }
            }
        }
        
        return area
    }
    
    var numOfPic = 0
    var maxArea = 0
    
    for i in 0..<n {
        for j in 0..<m {
            if arr[i][j] == 1 && !vis[i][j] {
                numOfPic += 1
                maxArea = max(maxArea, bfs(position: Position(x: i, y: j)))
            }
        }
    }
    
    print(numOfPic)
    print(maxArea)
    
    
}


struct QueueForPic<T> {
    
    private var enqueueStack: [T] = []
    private var dequeueStack: [T] = []
    
    var isEmpty: Bool {
        return enqueueStack.isEmpty && dequeueStack.isEmpty
    }
    
    mutating func enqueue(_ element: T) {
        enqueueStack.append(element)
    }
    
    mutating func dequeue() -> T? {
        if dequeueStack.isEmpty {
            dequeueStack = enqueueStack.reversed()
            enqueueStack.removeAll()
        }
        return dequeueStack.popLast()
    }
}
