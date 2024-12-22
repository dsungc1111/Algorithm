import Foundation


func acculatedSum() {
    
    let T = Int(readLine()!)!
   
    for i in 0..<T {
        
        let cases = readLine()!.split(separator: " ").map { Int($0)! }
        let N = cases[0], M = cases[1]
        let arr = readLine()!.split(separator: " ").map { Int($0)! }
        
        var start = 0
        var end = N - 1
        var count = 0
        
        while start < end {
            
            let sum = arr[start] + arr[end]
            
            if sum == M {
                count += 1
                start += 1
                end -= 1
            } else if sum < M {
                start += 1
            } else {
                end -= 1
            }
        }
        
        print("Case #\(i+1): \(count)")
    }
    
}
acculatedSum()