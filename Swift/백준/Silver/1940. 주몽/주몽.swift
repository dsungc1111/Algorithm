import Foundation


func acculatedSum() {
    
    let N = Int(readLine()!)!
    let M = Int(readLine()!)!
    
    var mat = readLine()!.split(separator: " ").map { Int($0)! }
    
    mat.sort()
    
    var end = N - 1
    var count = 0
    var start = 0
   
    while start < end   {
        
        let sum = mat[start] + mat[end]
        
        if sum < M {
            start += 1
        } else if sum == M {
            count += 1
            start += 1
            end -= 1
        } else {
            end -= 1
        }
        
    }
    print(count)
}
acculatedSum()