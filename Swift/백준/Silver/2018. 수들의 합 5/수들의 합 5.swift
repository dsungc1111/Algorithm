
import Foundation


func sumOfNumberss() {

    
    let input = Int(readLine()!)!
    var count = 0
    var start = 1, end = 1, sum = 1
    
    while start <= end {
        
        if sum == input {
    
            count += 1
            sum -= start
            start += 1
            end += 1
            sum += end
        } else if sum < input {
            end += 1
            sum += end
        } else {
            sum -= start
            start += 1
        }
    }
    print(count)
}

sumOfNumberss()