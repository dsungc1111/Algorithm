
import Foundation


func apple() {
    
    let input = readLine()!.split(separator: " ").map { Int($0)! }
    let N = input[0], M = input[1] // N 스크린 개수, M 바구니 너비
    let J = Int(readLine()!)!

    var left = 0
    var right = M - 1
    var count = 0
    
    for _ in 0..<J {
        let apple = Int(readLine()!)! - 1
        
        if apple < left {
            
            count += left - apple
            right -= left - apple
            left = apple
            
        } else if apple > right {
            
            count += apple - right
            left += apple - right
            right = apple
        }
    }
    
    print(count)
    
}
apple()