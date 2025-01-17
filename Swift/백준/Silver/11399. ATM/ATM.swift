
import Foundation


func bank() {
    
    let people = Int(readLine()!)!
    
    var input = readLine()!.split(separator: " ").map { Int($0)! }
    
    input.sort()
    var sum = 0
    var sumarr = [Int]()
    
    for i in input {
        sum += i
        sumarr.append(sum)
    }
    print(sumarr.reduce(0, +))
    
}
bank()