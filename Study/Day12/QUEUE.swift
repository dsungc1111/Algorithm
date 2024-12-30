//
//  QUEUE.swift
//  Study
//
//  Created by 최대성 on 12/30/24.
//

import Foundation


struct Queue<T> {
    
    private var inbox: [T] = []
    private var outbox: [T] = []
    
    var isEmpty: Bool {
        inbox.isEmpty && outbox.isEmpty
    }
    
    var count: Int {
        outbox.count + inbox.count
    }
    
    var front: T? {
        outbox.isEmpty ? inbox.first : outbox.last
    }
    
    mutating func enqueue(_ element: T) {
        inbox.append(element)
    }
    
    mutating func dequeue() -> T? {
        
        if outbox.isEmpty {
            outbox = inbox.reversed()
            inbox.removeAll()
        }
        
        return outbox.popLast()
    }
  
}
