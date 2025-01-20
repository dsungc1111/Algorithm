import Foundation

func lost() {
    
    let input = readLine()!.split(separator: "-")
    
    var sum = 0
    
    for i in input[0].split(separator: "+") {
        sum += Int(i)!
    }
    
    for i in input.dropFirst() {
        let minusSum = i.split(separator: "+").map{ Int($0)! }.reduce(0, +)
        sum -= minusSum
    }
    
    print(sum)
}
lost()