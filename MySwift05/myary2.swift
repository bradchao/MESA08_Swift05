//
//  myary2.swift
//  MySwift05
//
//  Created by user22 on 2017/9/7.
//  Copyright © 2017年 Brad Big Company. All rights reserved.
//

import Foundation

func ary2test(){
    var ary1 = [[1,2],[3,4,5],[6,7,8,9,10]]
    print(type(of:ary1))
    // 自動推斷為 Array<Array<Int>>
    
    print(ary1.description)
    print(ary1[0].description)
    print(ary1.count)
    print(ary1[2].count)
    
    ary1 += [[11,22,33]]
    print(ary1.description)
    
    ary1[1] += [51,52]
    print(ary1.description)

    for (ii, vv) in ary1.enumerated() {
        print("\(ii)-------")
        for (i,v) in vv.enumerated() {
            print("\(i) : \(v)")
        }
    }
    print("-----")
    
    
    
    
}
