//
//  level7.swift
//  baekjun-star
//
//  Created by SwiftMan on 2021/09/07.
//

import Foundation
/*
 예제를 보고 규칙을 유추한 뒤에 별을 찍어 보세요.
 
    *
   ***
  *****
 *******
*********
 *******
  *****
   ***
    *
 */
func level7() {
  let num = Int(readLine()!)!
  
  for i in 1 ..< num {
    print(String(repeating: " ", count: num - i) + String(repeating: "*", count: i * 2 - 1))
  }
  
  for i in 0 ..< num {
    print(String(repeating: " ", count: i) + String(repeating: "*", count: (num * 2 - 1) - i * 2))
  }
}
