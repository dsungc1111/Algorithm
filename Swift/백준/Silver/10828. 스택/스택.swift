
import Foundation


func stackstack() {
    
    let N = Int(readLine()!)!
    
    var arr = [Int]()
    
    for _ in 0..<N {
        
        let input = readLine()!.split(separator: " ").map { String($0) }
        
        let word = input[0]
        var num = 0
        
        if word == "push" {
            num = Int(input[1])!
            arr.append(num)
        } else if word == "pop" {
            
            if arr.count != 0 {
                let a = arr.removeLast()
                print(a)
            } else {
                print(-1)
            }
        } else if word == "size" {
            print(arr.count)
        } else if word == "empty" {
            print(arr.isEmpty ? 1 : 0)
        } else if word == "top" {
            print(arr.isEmpty ? -1 : arr[arr.count-1])
        }
    }
}
stackstack()