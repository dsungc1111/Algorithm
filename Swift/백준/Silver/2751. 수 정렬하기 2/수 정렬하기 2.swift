import Foundation

func des() {
    
    let N = Int(readLine()!)!
    var arr = [Int]()
    
    for _ in 0..<N {
        let input = Int(readLine()!)!
        arr.append(input)
    }
    arr = arr.sorted()
    
    for i in arr {
        print(i)
    }
}
des()