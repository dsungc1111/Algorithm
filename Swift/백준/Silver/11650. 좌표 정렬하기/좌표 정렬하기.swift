import Foundation

func sortword() {
    
    let input = Int(readLine()!)!
    var arr = [[Int]]()
    
    for _ in 0..<input {
        let pos = readLine()!.split(separator: " ").map { Int($0)! }
        arr.append(pos)
    }
    
    
    arr.sort { $0[0] == $1[0] ?  $0[1] < $1[1] :  $0[0] < $1[0] }
    
    arr.forEach { print($0[0], $0[1]) }
    
}
sortword()