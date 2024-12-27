
import Foundation

func threejumong() {
    
    
    let N = Int(readLine()!)! // 재료 개수
    let M = Int(readLine()!)! // 갑옷을 만드는 데 필요한 수
    
    var arr = readLine()!.split(separator: " ").map { Int($0)! }
    
    arr.sort()
    
    var end = N - 1
    var sum = 0
    var count = 0
    var start = 0
    
    for _ in 0..<N {
        
        sum = arr[start] + arr[end]
        
        if sum < M {
            start += 1
        } else if sum == M {
            count += 1
            start += 1
            end -= 1
        } else {
            end -= 1
        }
        
        if start >= end { break }
        
    }
    print(count)
    
}
threejumong()