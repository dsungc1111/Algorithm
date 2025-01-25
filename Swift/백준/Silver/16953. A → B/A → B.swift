
import Foundation

func changeNum() {
    let input = readLine()!.split(separator: " ").map { Int($0)! }
    let A = input[0]
    var B = input[1]
    var count = 0
    
    while true {
        
        if B % 10 == 1 {
            B /= 10
        } else if B % 2 == 0 {
            B /= 2
        } else {
            print(-1)
            break
            
        }
        count += 1
        
        if B == A {
            print(count + 1)
            break
        } else if B < A {
            print(-1)
            break
        }
    }
}
changeNum()