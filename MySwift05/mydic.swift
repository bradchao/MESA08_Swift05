//
//  mydic.swift
//  MySwift05
//
//  Created by user22 on 2017/9/11.
//  Copyright © 2017年 Brad Big Company. All rights reserved.
//

import Foundation

// Array => 1. 有順序性(index) 2. 元素可以重複
// Set => 1. 無順序性 2. 元素不會重複
// Dictionary => 1.無順序性(Key->元素) 2. 元素可以重複
func mydic(){
    let d1:[Int:String] = [:]   // Dictionary [Int:String]
    print(type(of:d1))
    let d2 = [Int:String]()
    print(type(of:d2))
    let d3:[Int:String] = Dictionary()
    print(type(of:d3))
    
    var d4:[Int:String] = [1:"a", 2:"b", 11:"a"]
    print(d4.count)
    print(d4)
    print(d4[1]!)
    d4[3] = "abc"
    print(d4.count)
    print(d4)
    d4[3] = "aaa"
    print(d4.count)
    print(d4)
    
    var d5:[String:Int] = [:]
    d5["weight"] = 80
    d5["age"] = 51
    d5["a"] = 123
    d5["b"] = 456
    print(d5)
    
    for (k,v) in d5 {
        print("\(k) : \(v)")
    }
    
    var line:[[String:Int]] = Array()
    print(type(of:line))
    
    line += [["X":12, "Y":100]]
    line += [["X":13, "Y":101]]
    line += [["X":14, "Y":102]]
    line += [["X":15, "Y":103]]
    line += [["X":16, "Y":104]]
    
    print(line)
    for point in line {
        let x = point["X"]
        let y = point["Y"]
        print("(\(x!), \(y!))")
    }
    
    for k in d5.keys {
        print(k)
    }
    
    for v in d5.values {
        print(v)
    }
    
    if let v = d5["a"] {
        print(v)
    }else{
        print("nothing")
    }
    
    let isExist = d5.values.contains(81)
    print(isExist)
    
    
    
    
    
}
