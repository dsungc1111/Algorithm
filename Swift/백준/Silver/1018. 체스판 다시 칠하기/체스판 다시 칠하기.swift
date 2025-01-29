
import Foundation


func chesspan() {
    
    let input = readLine()!.split(separator: " ").map { Int($0)! }
    let N = input[0], M = input[1]
    
    
    var arr = [[Character]]()
    
    for _ in 0..<N {
        arr.append(readLine()!.map { $0 } )
    }
    var minpaint = 64
    
    for y in 0...N-8 {
        for x in 0...M-8 {
            
            var leftW = 0
            var leftB = 0
            
            for i in y..<8+y {
                for j in x..<8+x {
                    
                    let currentColor = arr[i][j]
                    
                    if (i+j) % 2 == 0 {
                        
                        if currentColor != "W" { leftW += 1}
                        
                        if currentColor != "B" { leftB += 1}
                        
                    } else {
                        
                        if currentColor != "W" { leftB += 1}
                        
                        if currentColor != "B" { leftW += 1}
                        
                    }
                }
            }
            let localmin = min(leftB, leftW)
            minpaint = min(minpaint, localmin)
        }
    }
    print(minpaint)
    
}
chesspan()