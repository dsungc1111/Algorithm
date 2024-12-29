import Foundation
func findOne() {
    
    while let line = readLine(), let input = Int(line), input > 0 {
        var num = 1
        var count = 1
        
        while num % input != 0 {
            num = (num * 10 + 1) % input
            count += 1
        }
        print(count)
    }
}
findOne()