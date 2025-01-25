import Foundation

func bino() {
    
    let input = readLine()!.split(separator: " ").map { Int($0)! }
    let N = input[0], K = input[1]
    
    
    print(factorial(num: N) / (factorial(num: N-K) * factorial(num: K))    )
}


func factorial(num: Int) -> Int {
    
    
    if num < 2 { return 1}
    else {
        return num * factorial(num: num-1)
    }
}
bino()