import Foundation

func yose() {
    let input = readLine()!.split(separator: " ").map { Int($0)! }
    let N = input[0], K = input[1]
    var arr = [Int]()
    var index = 0
    var newarr = [Int]()
    
    for i in 1...N { arr.append(i) }
    
    while !arr.isEmpty {
        
        index = (index + K - 1) % arr.count
        newarr.append(arr.remove(at: index))
    }
    print("<", terminator: "")
    for i in 0..<newarr.count {
        if i < newarr.count - 1 {
            print(newarr[i], terminator: ", ")
        } else {
            print(newarr[i], terminator: "")
        }
        
    }
    print(">")
}
yose()