
import Foundation

func thirty() {
    
    let input = readLine()!.map { Int(String($0))! }
    
    
    if !input.contains(0) {
        print(-1)
    } else {
        
        let total = input.reduce(0, +)
        if total % 3 == 0 {
            
            print(input.sorted(by: >).map { String($0)}.reduce("", +) )
            
        } else  {
            print(-1)
        }
    }
}
thirty()