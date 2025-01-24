
import Foundation


func blackjack() {
    
    let input = readLine()!.split(separator: " ").map { Int($0)! }
    let N = input[0], M = input[1]
    
    var card = readLine()!.split(separator: " ").map { Int($0)! }
    card.sort()
    
    var maxSum = Int.min
   
    
    
    for i in 0..<N-2 {
        var left = i + 1
        var right = N - 1
        
        while left < right {
            let sum = card[i] + card[left] + card[right]
            
            if sum > M {
                right -= 1
            } else {
                maxSum = max(maxSum, sum)
                left += 1
            }
        }
    }
    
    print(maxSum)
}
blackjack()