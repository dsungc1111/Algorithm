import Foundation


func jumong() {
    
    let N = Int(readLine()!)!
    let M = Int(readLine()!)!
    var materials = readLine()!.split(separator: " ").map { Int($0)! }
    
    materials.sort()
    
    var count = 0
    var end = N - 1
    var start = 0
    
    while start < end {
        
        let sum = materials[start] + materials[end]
        
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
    
    print(count)
}
jumong()