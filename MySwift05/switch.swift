//
//  switch.swift
//  MySwift05
//
//  Created by user22 on 2017/9/12.
//  Copyright © 2017年 Brad Big Company. All rights reserved.
//

import Foundation

func switchtest(){
    let a = 4
    switch a {
    case 1, 2,3,4:
        print("A")
    case 10:
        print("B")
        fallthrough
    case 100:
        print("C")
    default:
        print("X")
    }
    print("-------")
    let month = Int(arc4random_uniform(12) + 1)
    print(month)
    switch month {
    case 1, 3, 5, 7, 8, 10, 12:
        print(31)
    case 4, 6, 9, 11:
        print(30)
    case 2:
        print(28)
    default:
        print("XX")
    }
    print("-------")
    
    let score = Int(arc4random_uniform(101))
    print(score)
    switch score {
    case 90...100:
        print("A")
    case 80..<90:
        print("B")
    case 70..<80:
        print("C")
    case 60..<70:
        print("D")
    case 0..<60:
        print("E")
    default:
        print("X")
    }
    
    print("-------")
    
    let b = 4
    var c = Int(arc4random_uniform(3))
    switch b {
    case c + 1:
        print("A1")
    case c + 2:
        print("A2")
    case c + 3:
        print("A3")
    case c + 4:
        print("A4")
    default:
        print("X")
    }
    print("-------")
    
    // tuple
    let d = (1,"2",3) // (Int, String, Int)
    switch d {
    case (9,"2",3):
        print("A3")
    case (9...19,"2",3):
        print("A0")
    case (100,"2",3):
        print("A1")
    case (2,"3",4):
        print("A2")
    case (3,"4",5):
        print("A3")
    case let (x,y,z):
        print("\(x):\(y):\(z)")
    }
    print("-------")
    
    let point = (123, -12)
    switch point {
    case let (x,y) where x == y:
        print("A")
    case let (x,y) where x == -y:
        print("B")
    case let (x,y):
        print("C")
    }
    
    
    
    
    
}
