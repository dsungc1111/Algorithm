import Foundation


func cowcow() {
    
    let N = Int(readLine()!)!
    var dic = [Int : Int]()
    
    var count = 0
    
    for _ in 0..<N {
        let input = readLine()!.split(separator: " ").map { Int($0)! }
        
        let cowID = input[0]
        let pos = input[1]
        
        if dic[cowID] != nil && dic[cowID] != pos {
            count += 1
        }
        dic[cowID] = pos
    }
    
    
    print(count)
}
cowcow()