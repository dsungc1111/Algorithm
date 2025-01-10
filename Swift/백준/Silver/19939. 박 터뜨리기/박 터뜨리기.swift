import Foundation


func bak() {
    
    let input = readLine()!.split(separator: " ").map { Int($0)! }
    
    let N = input[0], K = input[1]
    
    var sum = 0
    for i in 1...K { sum += i }
    
    
    var remaining = N - sum
    
    
    if remaining < 0 { print(-1) }
    else {
        if remaining % K == 0 {
            print(K - 1)
        } else {
            print(K)
        }
    }
    
}
bak()