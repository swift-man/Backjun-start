//
//  level15.swift
//  baekjun-star
//
//  Created by SwiftMan on 2021/09/10.
//

import Foundation
/*
 예제를 보고 규칙을 유추한 뒤에 별을 찍어 보세요.
 // 5
    *
   * *
  *   *
 *     *
*1234567*
 */

func level15() {
  let input = Int(readLine()!)!
  
  if input == 1 {
    print("*")
    return
  } else if input == 2 {
    print(" *")
    print("* *")
    return
  }
  print(String(repeating: " ", count: input - 1) + "*")
  var j = 1
  for i in 2 ..< input {
    print(String(repeating: " ", count: input - i - 1), "*" + String(repeating: " ", count: j) + "*")
    j += 2
  }
  print("*" + String(repeating: " ", count: j) + "*")
}
