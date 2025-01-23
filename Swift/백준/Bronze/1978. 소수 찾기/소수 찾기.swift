import Foundation


func findCount() {
    let _ = Int(readLine()!)!
    
    let input = readLine()!.split(separator: " ").map { Int($0)! }
    var total = 0
    // 소수
    for i in input {
        var count = 0
        for j in 1...i {
            if i % j == 0 { count += 1 }
        }
        
        if count == 2 { total += 1}
    }
    
    print(total)
}
findCount()