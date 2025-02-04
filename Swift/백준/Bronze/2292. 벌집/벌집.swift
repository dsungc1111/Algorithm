import Foundation


func bee() {
    
    let N = Int(readLine()!)!
  
    var sum = 1
    var count = 1
    
    for i in 1...N {
        
        if N == 1 { print(count); break }
        if N <= sum { print(count); break }
            
        sum += 6*i
        count += 1
        
    }
    
    
    
}
bee()