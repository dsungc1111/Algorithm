import Foundation


func wordsort() {
    
    let num = Int(readLine()!)!
    var arr = [String]()
    
    
    for _ in 0..<num {
        let input = readLine()!
        arr.append(input)
    }
    
    arr = Array(Set(arr))
    arr.sort { $0.count == $1.count ?  $0 < $1 : $0.count < $1.count }
    
    arr.forEach { print($0) }
}
wordsort()