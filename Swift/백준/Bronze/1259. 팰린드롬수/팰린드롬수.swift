
import Foundation


func sameNum() {
    while true {
        
        let input = readLine()!.map { Int(String($0))! }
        
        if input[0] == 0 { break }
        
        let N = input.count / 2
        var end = input.count - 1
        var count = 0
        
        for i in 0..<N {
            if input[i] == input[end] {
                count += 1
                end -= 1
            }
        }
        print(N == count ? "yes" : "no")
    }
}
sameNum()