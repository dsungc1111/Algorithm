//
//  Organic.swift
//  Study
//
//  Created by 최대성 on 1/1/25.
//

import Foundation


func organic() {
    
    
    let directions = [(1,0), (0,1), (-1,0), (0,-1)]
    
    let testcase = Int(readLine()!)!
    
    for _ in 0..<testcase {
     
        let input = readLine()!.split(separator: " ").map { Int($0)! }
        let M = input[0], N = input[1], K = input[2]
        
        
        var field = Array(repeating: Array(repeating: 0, count: N), count: M)
        var vis = Array(repeating: Array(repeating: false, count: N), count: M)
        
        
        for _ in 0..<K {
            let baechu = readLine()!.split(separator: " ").map{ Int($0)! }
            let x = baechu[0]
            let y = baechu[1]
            field[x][y] = 1
            
        } 
        struct Position {
            let x: Int
            let y: Int
        }
     
        func bfs(_ start:Position) {
            
            var queue = QueueForMaze<Position>()
            queue.enqueue(start)
            vis[start.x][start.y] = true
            
            while !queue.isEmpty {
                
                guard let current = queue.dequeue() else { continue }
                
                let x = current.x
                let y = current.y
                
                for direction in directions {
                    let nx = x + direction.0
                    let ny = y + direction.1
                    
                    
                    if nx >= 0 && nx < M && ny >= 0 && ny < N && !vis[nx][ny] && field[nx][ny] == 1 {
                        vis[nx][ny] = true
                        queue.enqueue(Position(x: nx, y: ny))
                    }
                }
            }
            
        }
        var count = 0
        
        for i in 0..<M {
            for j in 0..<N {
                if field[i][j] == 1 && !vis[i][j] {
                    bfs(Position(x: i, y: j))
                    count += 1
                }
            }
        }
        print(count)
    }
}
