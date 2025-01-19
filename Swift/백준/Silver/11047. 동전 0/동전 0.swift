
import Foundation

func coin0() {
    let input = readLine()!.split(separator: " ").map { Int($0)! }
    var N = input[0], K = input[1]
    var arr = [Int]()
    
    
    for _ in 0..<N {
        let num = Int(readLine()!)!
        arr.append(num)
    }
    var count = 0
    
    for num in arr.reversed() {
        count += K / num
        K = K % num
        if K <= 0 { break }
    }
    
    print(count)
}
coin0()