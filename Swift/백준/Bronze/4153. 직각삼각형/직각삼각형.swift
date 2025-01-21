import Foundation


func triangle() {
    
    while true {
        var input = readLine()!.split(separator: " ").map { Int($0)! }
        input = input.sorted()
        if input.contains(0) { break }
        
        if pow(Decimal(input[2]), 2) == pow(Decimal(input[0]), 2) + pow(Decimal(input[1]), 2) {
            print("right")
        } else {
            print("wrong")
        }
    }
    
}
triangle()