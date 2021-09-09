//
//  level13.swift
//  baekjun-star
//
//  Created by SwiftMan on 2021/09/10.
//

import Foundation
/*
 예제를 보고 규칙을 유추한 뒤에 별을 찍어 보세요.
 // 3
 *
 **
 ***
 **
 *
 */

func level13() {
  let input = Int(readLine()!)!
  
  for i in 1 ... input {
    print(String(repeating: "*", count: i))
  }
  
  for i in stride(from: input - 1, to: 0, by: -1) {
    print(String(repeating: "*", count: i))
  }
}
