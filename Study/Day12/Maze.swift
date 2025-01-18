//
//  Maze.swift
//  Study
//
//  Created by 최대성 on 12/30/24.
//

import Foundation


func maze() {
    
    let input = readLine()!.split(separator: " ").map { Int($0)! }
    let N = input[0], M = input[1]
    var arr = [[Int]]()
    
    
    for _ in 0..<N {
        arr.append(readLine()!.map{ Int(String($0))! })
    }
    
    let directions = [(1,0),(0,1),(-1,0),(0,-1)] // 하 우 상 좌
    var vis = Array(repeating: Array(repeating: false, count: M), count: N) // 방문 여부
    
    struct Position {
        let x: Int
        let y: Int
        let dis: Int
    }
    // 좌표 및 거리 구조체
    
    var queue = QueueForMaze<Position>()
    
    // 시작점 초기화
    queue.enqueue(Position(x: 0, y: 0, dis: 1))
    vis[0][0] = true
    
    
    // BFS 탐색
    while !queue.isEmpty {
        
        guard let current = queue.dequeue() else { break }
        // dequeue를 통해 현재 위치 가져옴 => 좌표와 거리 포함
        
        let x =  current.x
        let y =  current.y
        let dis =  current.dis
        
        
        // 현재 위치가 N-1, M-1이라면 도착한 것이므로 print 후 프로그램 종료
        if x == N - 1 && y == M - 1 {
            print(dis)
            return
        }
        
        /* 
         상하좌우 네 방향 탐색
         nx, ny를 통해 새로운 좌표 계산
         조건문 x,y가 0보다 크면서도 x의 max치인 N - 1, y의 맥스인 M-1이면서도 arr의 좌표가 이동가능한 1이면서도 vis의좌표가 false일 때
         해당 vis좌표 true로 설정
         이동거리를 새 이동거리에 + 1 하도록 설정
         
         */
        for direction in directions {
            
            let nx = x + direction.0 // x
            let ny = y + direction.1 // y
            
            // 범위 내이고, 이동 가능하고, 방문 X 인경우
            if nx >= 0 && nx < N && ny >= 0 && ny < M && arr[nx][ny] == 1 && !vis[nx][ny] {
                vis[nx][ny] = true
                queue.enqueue(Position(x: nx, y: ny, dis: dis + 1))
            }
            
        }
        
    }
    
}


struct QueueForMaze<T> {
    
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
