
import Foundation


func towerDistance() {
    let input = Int(readLine()!)!
    var arr = [Int]()
    var totalDistance = 0
    
    for _ in 0..<input {
        let point = Int(readLine()!)!
        arr.append(point)
        totalDistance += point
    }
    
    var clockWise = Array(repeating: 0, count: input + 1)
    for i in 1...input {
        clockWise[i] = clockWise[i-1] + arr[i-1]
    }
    
    var maxDistance = 0
    for i in 0..<input {
        for j in i + 1...input {
            let clockwiseDistance = clockWise[j] - clockWise[i]
            let counterClockwiseDistance = totalDistance - clockwiseDistance
            let minDistance = min(clockwiseDistance, counterClockwiseDistance)
            maxDistance = max(maxDistance, minDistance)
        }
    }

      print(maxDistance)
    
}
towerDistance()