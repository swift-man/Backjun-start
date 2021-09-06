//
//  level1.swift
//  backjun-start
//
//  Created by SwiftMan on 2021/09/06.
//

import Foundation
/*
 첫째 줄에는 별 1개, 둘째 줄에는 별 2개, N번째 줄에는 별 N개를 찍는 문제
 
 *
 **
 ***
 ****
 *****
 */
func level1() {
  let line = Int(readLine()!)!
  
  for i in 0 ..< line {
    for _ in 0 ..< i + 1 {
      print("*", terminator: "")
    }
    print("")
  }
}

