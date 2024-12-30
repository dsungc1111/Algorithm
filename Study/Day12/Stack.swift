//
//  Stack.swift
//  Study
//
//  Created by 최대성 on 12/30/24.
//

import Foundation


struct Stack<T> {
    
    private var elements: [T] = []
    
    init() {}
    
    mutating func push(with element: T) {
        elements.append(element)
    }
    
    @discardableResult
    mutating func pop() -> T? {
        elements.popLast()
    }
    
    func peek() -> T? {
        elements.last
    }
    
    var isEmpty: Bool {
        elements.isEmpty
    }
    var count: Int {
        elements.count
    }
}
