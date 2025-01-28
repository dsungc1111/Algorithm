
import Foundation

func ThingsTodo() {
  
    let input = readLine()!.split(separator: " ").map{ Int($0)! }
    let A = input[0], B = input[1], C = input[2], M = input[3]
    var tired = 0, work = 0
    
    
    for _ in 0..<24 {
    
        if tired < 0 { tired = 0}
        
        if tired + A <= M {
            tired += A
            work += B
        } else {
            tired -= C
        }
    }
    
    print(work)
}
ThingsTodo()