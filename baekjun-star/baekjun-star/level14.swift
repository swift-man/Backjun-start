//
//  level14.swift
//  baekjun-star
//
//  Created by SwiftMan on 2021/09/10.
//

import Foundation
/*
 지금까지 안 나온 별 찍기가 뭐가 있는지 생각해본 후, 별을 적절히 찍으세요.
 // 1
 *
 */

func level14() {
  let input = Int(readLine()!)!
  
  for _ in 1 ... input {
    print(String(repeating: "*", count: input))
  }
}
