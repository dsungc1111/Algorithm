
import Foundation

func stock() {
    let testcase = Int(readLine()!)! // 테스트케이스 수 입력

    for _ in 0..<testcase {
        let _ = Int(readLine()!)! // 날짜 수 (사용하지 않으므로 무시)
        let prices = readLine()!.split(separator: " ").map { Int($0)! } // 주가 배열 입력
        
        var maxPrice = 0 // 역순으로 탐색하면서 최대값 저장
        var totalProfit = 0 // 총 이익
        
        // 역순으로 탐색
        for price in prices.reversed() {
            if price > maxPrice {
                maxPrice = price // 최대값 갱신
            } else {
                totalProfit += maxPrice - price // 이익 계산
            }
        }
        
        print(totalProfit) // 결과 출력
    }
}
stock()