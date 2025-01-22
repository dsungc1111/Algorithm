let n = Int(readLine()!)!
let array = readLine()!.split(separator: " ").map { Int($0)! }
let tp = readLine()!.split(separator: " ").map { Int($0)! }
let t = tp[0], p = tp[1]
var tsum = 0

for i in array {
    tsum += i / t
    if i % t > 0 {
        tsum += 1
    }
}

print(tsum)
print("\(n / p) \(n % p)")
