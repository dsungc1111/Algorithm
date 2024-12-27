
import Foundation


func makePall() {
    
    let word = readLine()!
    
    var arr = Array(repeating: 0, count: 26)
    
    var oddChar = ""
    var oddCharIndex = 0
    
    var result = ""
    
    for c in word {
        let asciiIndex = Int(c.asciiValue!) - Int(Character("A").asciiValue!)
        arr[asciiIndex] += 1
    }
    
    for i in 0..<arr.count {
        
        let half = arr[i] / 2
        
        for _ in 0..<half {
            result += String(UnicodeScalar(i+65)!)
        }
        if arr[i] % 2 == 1 {
            oddChar = String(UnicodeScalar(i+65)!)
            oddCharIndex += 1
        }
    }
    
    if oddCharIndex > 1{
        result  = "I'm Sorry Hansoo"
    } else {
        result += oddChar + String(result.reversed())
    }
    
    print(result)
}
makePall()