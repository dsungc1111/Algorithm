import Foundation


func goodword() {
    
    let N = Int(readLine()!)!
    var list: [Character] = []
    var count = 0
    
    for _ in 0..<N {
        list = []
        let input = readLine()!
        
        for i in input {
            
            if let compareCharacter = list.last, compareCharacter == i {
                list.removeLast()
            } else {
                list.append(i)
            }
                
        }
        
        if list.isEmpty { count += 1 }
    }
    print(count)
}
goodword()