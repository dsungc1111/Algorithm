import Foundation

func queue22() {
    let N = Int(readLine()!)!
    
    var numarr = [ Int ]()
    
    for _ in 0..<N {
        
        let input = readLine()!.split(separator: " ").map { String($0) }
        
        if input[0] == "push" { numarr.append(  Int(input[1])! ) }
        else if input[0] == "pop" {
            var newarr: [Int] = numarr.reversed()
            print(newarr.isEmpty ? -1 : newarr.removeLast())
            numarr = newarr.reversed()
        } else if input[0] == "size" {
            print(numarr.count)
        } else if input[0] == "empty" {
            print(numarr.isEmpty ? 1 : 0)
        } else if input[0] == "front" {
            print(numarr.isEmpty ? -1 : numarr.first!)
        } else if input[0] == "back" {
            print(numarr.isEmpty ? -1 : numarr.last!)
        }
        
    }
    
}
queue22()