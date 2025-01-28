import Foundation

func paraenthesis() {
    let N = Int(readLine()!)!
    
    
    for _ in 0..<N {
        
        let input = readLine()!
        var stack = [Character]()
        
        for c in input {
            if stack.isEmpty {
                stack.append(c)
                continue
            }
            if c == ")" && stack.last! == "(" {
                stack.removeLast()
            } else {
                stack.append(c)
            }
        }
        print(stack.isEmpty ? "YES" : "NO")
    }
    
}
paraenthesis()