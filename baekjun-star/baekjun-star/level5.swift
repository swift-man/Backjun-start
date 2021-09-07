//
//  level5.swift
//  baekjun-star
//
//  Created by SwiftMan on 2021/09/06.
//

import Foundation
/*
 첫째 줄에는 별 1개, 둘째 줄에는 별 3개, ..., N번째 줄에는 별 2×N-1개를 찍는 문제
 별은 가운데를 기준으로 대칭이어야 한다.
 
    *
   ***
  *****
 *******
*********
 */
func level5() {
  let num = Int(readLine()!)!
  
  for i in 0 ..< num {
    print(String(repeating: " ", count: num - i - 1) + String(repeating: "*", count: i * 2 + 1))
  }
}
