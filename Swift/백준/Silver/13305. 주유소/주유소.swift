import Foundation

func oil2() {
    
    let N = Int(readLine()!)!
    let len = readLine()!.split(separator: " ").map { Int($0)! }
    let price = readLine()!.split(separator: " ").map { Int($0)! }
    
    var sum = 0
    var minprice = price[0]
    
    for i in 0..<len.count {
        
        if minprice > price[i] {
            minprice = price[i]
        }
        sum += minprice * len[i]
    }
    print(sum)
    
}
oil2()