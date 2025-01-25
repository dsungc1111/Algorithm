import Foundation

func tap() {
    
    
    let input = readLine()!.split(separator: " ").map { Int($0)! }
    var first = input[0], second = input[1]
    
    var minnum = 1
    var num = 2
    
    while true {
            
        if first % num == 0 && second % num == 0 {
            minnum *= num
            first /= num
            second /= num
        } else {
            num += 1
        }
        
        if num > min(first, second) { break }
    }
    
    print(minnum)
    print(first*second*minnum)
}

tap()