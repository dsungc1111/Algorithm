import Foundation


func acculatedSum() {
    
    let N = Int(readLine()!)!
   
    
    var arr = readLine()!.split(separator: " ").map { Int($0)! }
    let x = Int(readLine()!)!
    
    arr.sort()
    
    var start = 0
    var count = 0
    var end = N - 1
    
    while start < end {
        
        let sum = arr[start] + arr[end]
        
        if sum == x {
            count += 1
            start += 1
            end -= 1
        } else if sum < x {
            start += 1
        } else {
            end -= 1
        }
        
        
    }
    print(count)
    
}
acculatedSum()