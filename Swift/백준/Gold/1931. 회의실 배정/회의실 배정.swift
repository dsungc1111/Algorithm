
import Foundation

func confer() {
    
    let num = Int(readLine()!)!
    var meeting = [(Int, Int)]()
    
    for _ in 0..<num {
        let input = readLine()!.split(separator: " ").map{ Int($0)! }
        meeting.append((input[0], input[1]))
    }
    
    // 종료 시간이 같을때 => 시작 시간 빠른 순으로 정렬
    // 종료 시간이 다를때 => 종료 시간 빠른 순으로 정렬
    meeting.sort { $0.1 == $1.1 ? $0.0 < $1.0 : $0.1 < $1.1 }
 
    var count = 0
    var lastEndTime = 0
    
    for meet in meeting {
        
        if meet.0 >= lastEndTime {
            count += 1
            lastEndTime = meet.1
        }
    }
    
    print(count)
}
confer()