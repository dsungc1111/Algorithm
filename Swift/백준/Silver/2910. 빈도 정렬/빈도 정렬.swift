
import Foundation

func frequency() {
    
    let input = readLine()!.split(separator: " ").map { Int($0)! }
    let arr = readLine()!.split(separator: " ").map { Int($0)! }
    
    var dic = [Int : Int]() // 전체 딕셔너리
    var indexDic = [Int : Int]() // 인덱스
    
    for (index, num) in arr.enumerated() {
        dic[num, default: 0] += 1
        if indexDic[num] == nil { indexDic[num] = index }
    }
    let sortedDic = dic.keys.sorted() {
        if dic[$0]! == dic[$1]! {
            return indexDic[$0]! < indexDic[$1]!
        } else {
            return dic[$0]! > dic[$1]!
        }
    }
    for num in sortedDic {
        for _ in 0..<dic[num]! {
            print(num, terminator: " ")
        }
    }
}
frequency()