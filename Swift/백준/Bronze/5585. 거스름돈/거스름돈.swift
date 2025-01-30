
import Foundation

func exchange2() {
    
    let money = Int(readLine()!)!
    var exchange = 1000 - money
    var count = 0
    
    while exchange != 0 {
        
        if exchange >= 500 {
            count += exchange/500
            exchange %= 500
        } else if exchange >= 100 && exchange < 500 {
            count += exchange / 100
            exchange %= 100
        } else if exchange < 100 && exchange >= 50 {
            count += exchange / 50
            exchange %= 50
        } else if exchange < 50 && exchange >= 10 {
            count += exchange / 10
            exchange %= 10
        } else if exchange < 10 && exchange >= 5 {
            count += exchange / 5
            exchange %= 5
        } else if exchange < 5 && exchange >= 1 {
            count += exchange / 1
            exchange %= 1
        }
//        count += 1
    }
    
    print(count)
    
    
    
}
exchange2()