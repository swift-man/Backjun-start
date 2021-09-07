//
//  level9.swift
//  backjun-start
//
//  Created by SwiftMan on 2021/09/07.
//

import Foundation
/*
 예제를 보고 규칙을 유추한 뒤에 별을 찍어 보세요.
 
 *********
  *******
   *****
    ***
     *
    ***
   *****
  *******
 *********
 */
func level9() {
  let num = Int(readLine()!)!
  
  for i in 0 ..< num {
    print(String(repeating: " ", count: i) + String(repeating: "*", count: (num * 2 - 1) - i * 2))
  }
  
  for i in 1 ..< num {
    print(String(repeating: " ", count: num - i - 1) + String(repeating: "*", count: i + i + 1))
  }
}
