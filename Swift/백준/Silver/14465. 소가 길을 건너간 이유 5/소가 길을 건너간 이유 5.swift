
import Foundation

func cow() {
    
    let input = readLine()!.split(separator: " ").map { Int($0)! }
    let N = input[0], K = input[1], B = input[2]
    var arr = Array(repeating: false, count: N)
    
    for _ in 0..<B {
        let number = Int(readLine()!)!
        arr[number - 1] = true
    }
    
    var sum = 0
    var min2 = Int.max
    
    for i in 0..<N {
        sum += arr[i] ? 1: 0
        if i + 1 > K {
            sum -= arr[i-K] ? 1: 0
        }
        if i + 1 >= K {
            min2 = min(sum, min2)
        }
    }
    
    print(min2)
}
cow()
