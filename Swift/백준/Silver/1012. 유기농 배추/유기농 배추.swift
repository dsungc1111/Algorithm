
import Foundation


func organic3() {
    
    let T = Int(readLine()!)!
    
    for _ in 0..<T {
     test()
    }
    
}

func test() {
    let input = readLine()!.split(separator: " ").map { Int($0)! }
    let M = input[0], N = input[1], K = input[2]
    let directions = [(1,0), (0,1), (-1,0), (0,-1)]
    
    var arr = Array(repeating: Array(repeating: 0, count: N), count: M)
    var vis = Array(repeating: Array(repeating: false, count: N), count: M)
    
    for _ in 0..<K {
        let place = readLine()!.split(separator: " ").map{ Int($0)! }
        arr[place[0]][place[1]] = 1
    }
    
    struct Position {
        let x: Int
        let y: Int
    }
    func bfs(_ element: Position) {
        
        var queue = QueueForOrganic3<Position>()
        queue.enqueue(element)
        vis[element.x][element.y] = true
        
        
        while !queue.isEmpty {
            
            guard let current = queue.dequeue() else { break }
            
            let x = current.x
            let y = current.y
            
            for direction in directions {
                
                let nx = x + direction.0
                let ny = y + direction.1
                
                if nx >= 0 && ny >= 0 && nx < M && ny < N && !vis[nx][ny] && arr[nx][ny] == 1 {
                    queue.enqueue(Position(x: nx, y: ny))
                    vis[nx][ny] = true
                }
            }
        }
    }
    
    
    
    
    var count = 0
    for x in 0..<M {
        for y in 0..<N {
            if !vis[x][y] && arr[x][y] == 1 {
                bfs(Position(x: x, y: y))
                count += 1
            }
        }
    }
    
    print(count)
    
}





struct QueueForOrganic3<T> {
    
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
organic3()