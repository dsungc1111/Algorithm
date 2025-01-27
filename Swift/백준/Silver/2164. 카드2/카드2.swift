
import Foundation

 
 func card2() {
     
     let input = Int(readLine()!)!
     
     var queue = cardForQueue<Int>()
     
     for i in 1...input { queue.enqueue(element: i) }
     
     while queue.enqueuestack.count + queue.dequeuestack.count > 1 {
         
         _ = queue.dequeue()
         
         if let topcard = queue.dequeue() {
             queue.enqueue(element: topcard)
         }
     }
     
     print(queue.enqueuestack[0])
 }

 struct cardForQueue<T> {
     
     var enqueuestack: [T] = []
     var dequeuestack: [T] = []
     
     var isEmpty: Bool {
         return enqueuestack.isEmpty && dequeuestack.isEmpty
     }
     
     mutating func enqueue(element: T) {
         enqueuestack.append(element)
     }
     
     
     mutating func dequeue() -> T? {
         
         if dequeuestack.isEmpty {
             dequeuestack = enqueuestack.reversed()
             enqueuestack.removeAll()
         }
         return dequeuestack.popLast()
     }
 }


card2()