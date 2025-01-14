import Foundation

func treasure() {
    
    
    let N = Int(readLine()!)!
    
    var A = readLine()!.split(separator: " ").map { Int($0)! }
    let B = readLine()!.split(separator: " ").map { Int($0)! }
    
    A = A.sorted(by: >)
    let newB = B.sorted()
    
    var total = 0
    
    for i in 0..<N {
        total += A[i] * newB[i]
    }
    
    print(total)
}
treasure()