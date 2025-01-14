
import Foundation

func area() {
    
    let input = readLine()!.split(separator: " ").map{ Int($0)! }
    let M = input[0], N = input[1], K = input[2]
    let directions = [(1,0), (0,1), (-1,0), (0,-1)]
    
    var areaArr = [Int]()
    var arr = Array(repeating: Array(repeating: 0, count: N), count: M)
    var vis = Array(repeating: Array(repeating: false, count: N), count: M)
    
    
    for _ in 0..<K {
        let input2 = readLine()!.split(separator: " ").map { Int($0)! }
        let x1 = input2[0], y1 = input2[1], x2 = input2[2], y2 = input2[3]
  
        for i in x1..<x2 {
            for j in y1..<y2 {
                arr[j][i] = 1
            }
        }
    }
    
    struct Position {
        let x: Int
        let y: Int
    }
    
    func bfs(position: Position ) {
        
        var queue = QueueforArea<Position>()
        queue.enqueue(position)
        vis[position.x][position.y] = true
        var area = 1
        
        while !queue.isEmpty {
            guard  let current = queue.dequeue() else { break }
            let x = current.x
            let y = current.y
            
            for direction in directions {
                
                let nx = x + direction.0
                let ny = y + direction.1
                
                if nx >= 0, ny >= 0, nx < M, ny < N, arr[nx][ny] == 0, !vis[nx][ny] {
                    queue.enqueue(Position(x: nx, y: ny))
                    vis[nx][ny] = true
                    area += 1
                }
                
            }
            
        }
        
        areaArr.append(area)
        
    }
    
    var numOfArea = 0
    
    for i in 0..<N {
        for j in 0..<M {
            if arr[j][i] == 0 && !vis[j][i] {
                numOfArea += 1
                bfs(position: Position(x: j, y: i))
            }
        }
    }
    
    print(numOfArea)
    print(areaArr.sorted().map { String($0)}.joined(separator: " "))
    
}


struct QueueforArea<T> {
    
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
area()