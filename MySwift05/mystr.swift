//
//  mystr.swift
//  MySwift05
//
//  Created by user22 on 2017/9/8.
//  Copyright © 2017年 Brad Big Company. All rights reserved.
//

import Foundation

func mystr(){
    var name = "BradChao"
    print(type(of:name))
    
    name += "趙令文"
    print(name)
    print(name.unicodeScalars.count)
    print(name.utf16.count)
    print(name.utf8.count)
    
    for c in name.characters {
        print(c)
    }
    
    let chars = Array(name.characters)
    print(type(of:chars))
    print(chars.count)
    print(chars[10])
    
    let newname = String(chars)
    print(type(of:newname))
    print(newname)

    let cs1 = ["A","B","C","D"]
    print(type(of:cs1))
    let cs2:[Character] = ["A","B","C","D"]
    print(type(of:cs2))

    let ns2 = String(cs2)
    print(ns2)
    
    var letters = "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
    print(letters)
    print(letters.unicodeScalars.count)
    
    let r1 = getStringRange(source: letters, from: 4, to: 9)
    print(letters.substring(with: r1))
    print(mysubstrv2(source: letters, from: 4, to: 9))
    
    let range = getStringRange(source: letters, from: 4, to: 9)
    letters.replaceSubrange(range, with: "1234")
    print(letters)
    
    let r2 = getStringRange(source: letters, from: 4, to: 8)
    letters.removeSubrange(r2)
    print(letters)
    
    
    
    
}

func getStringRange(source:String, from:Int, to:Int) -> Range<String.Index> {
    let start = source.index(source.startIndex, offsetBy: from)
    let end = source.index(source.startIndex, offsetBy: to)
    let range = start..<end
    return range
}
//func mysubstr(source:String, from:Int, to:Int) -> String {
//    let range = getStringRange(source: source, from: from, to: to)
//    return source.substring(with: range)
//}

func mysubstrv2(source:String, from:Int, to:Int) -> String {
    let cs = Array(source.characters);
    var ret = ""
    for i in from..<to {
        ret += String(cs[i])
    }
    return ret
}

func mystr2(){
    let a = 10, b = 3
    if a > b {
        print( "OK")
    }else{
        print( "XX")
    }
    
    // c => ASCII => 99; C => ASCII => 67
    let c = "c", d = "C"
    if c > d {
        print("OK2")
    }else{
        print("XX2")
    }
    
    var a1:String? = "Brad"
    if let a2 = a1 {
        print(type(of:a2))
        print("OK3:\(a1):\(a2)")
    }else{
        //print(type(of:a2))
        // 不認識 a2
        print("XX3")
    }
    
    let twid = "A123456789"
    if let range = twid.range(of: "1234") {
        print("OK4")
    }else{
        print("XX4")
    }
    
    if let range = twid.range(of: "^[A-Z][12][0-9]{8}$", options: .regularExpression ) {
        print("OK5")
    }else{
        print("XX5")
    }
    
    
    
}


