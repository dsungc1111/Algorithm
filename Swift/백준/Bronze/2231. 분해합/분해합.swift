import Foundation

func totalSum() {
    
    let N = Int(readLine()!)!
    var count = 0
    
    for num in 1...N {
        
        var new = num
        var sum = 0
        
        
        while new != 0 {
            sum += new % 10
            new /= 10
        }
        
        let get = sum + num
        if get == N { print(num); count += 1; break }
        
    }
    if count == 0 { print(0) }
    
}
totalSum()