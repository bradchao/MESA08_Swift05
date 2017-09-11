//
//  mytuple.swift
//  MySwift05
//
//  Created by user22 on 2017/9/11.
//  Copyright © 2017年 Brad Big Company. All rights reserved.
//

import Foundation

func tupletest(){
    let p1 = (10,24)    // tuple, 資料組 -> (Int, Int)
    print(type(of:p1))
    
    print(p1.0)
    print(p1.1)
    
    let (x1, y1) = p1
    print(x1)
    print(y1)
    
    let p2 = (10, 25)
    if p1 > p2 {
        print("OK1")
    }else {
        print("XX1")
    }
    
    let p3 = (p1, p2)
    print(type(of:p3))
    print(p3.1.1)
    
    let p4:(x:Double, y:String) = (1, "2")
    print(p4.x)
    print(p4.0)
    
    let p5 = (x: 11, y: "22")
    print(p5.y)
    
    
    
    
    
    
    
}
