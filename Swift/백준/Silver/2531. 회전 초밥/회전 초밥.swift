
import Foundation

func circularsushi() {
    
    let input = readLine()!.split(separator: " ").map { Int($0)! }
    let N = input[0], D = input[1], K = input[2], C = input[3]
    var belt = [Int]() // 초밥 종류
    
    for _ in 0..<N {
        let num = Int(readLine()!)!
        belt.append(num)
    }
    
    var max_sushi = 0
    
    for i in 0..<N {
        var eat_sushi = 1
        var check = [Int](repeating: 0, count: D+1)
        check[C] = 1
        for j in i..<i+K {
            var sushi = belt[j % N]
            
            if check[sushi] == 0 {
                eat_sushi += 1
            }
            check[sushi] += 1
        }
        max_sushi = max(max_sushi, eat_sushi)
    }
    
    print(max_sushi)
    
}
circularsushi()