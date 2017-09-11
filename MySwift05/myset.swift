//
//  myset.swift
//  MySwift05
//
//  Created by user22 on 2017/9/11.
//  Copyright © 2017年 Brad Big Company. All rights reserved.
//

import Foundation

// Array => 1. 有順序性(index) 2. 元素可以重複
// Set => 1. 無順序性 2. 元素不會重複
// Dictionary => 1.無順序性(Key->元素) 2. 元素可以重複
func myset(){
    var s1 = Set<Int>() // Set, 元素為Int
    print(type(of:s1))
    print(s1.count)
    s1.insert(123)
    s1.insert(321)
    s1.insert(111)
    s1.insert(444)
    print(s1.count)
    s1.insert(123)
    s1.insert(321)
    s1.insert(55)
    s1.insert(3)
    print(s1.count)
    print(s1)
    s1.remove(321)
    print(s1)
    print(s1.popFirst()!)
    print(s1)
    for v in s1 {
        print(v)
    }
    
    // 出樂透 1 - 49 => 6
    var lottery = Set<Int>()
    while lottery.count < 6 {
        lottery.insert(Int(arc4random_uniform(49)+1))
    }
    print(lottery)
    
    for v in lottery.sorted() {
        print(v)
    }
    
    var iterator = lottery.makeIterator()
    while let v  = iterator.next() {
        print(v)
    }
    
}
