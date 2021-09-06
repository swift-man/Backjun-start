//
//  level6.swift
//  backjun-start
//
//  Created by SwiftMan on 2021/09/06.
//

import Foundation
/*
 첫째 줄에는 별 2×N-1개, 둘째 줄에는 별 2×N-3개, ..., N번째 줄에는 별 1개를 찍는 문제
 별은 가운데를 기준으로 대칭이어야 한다.
 
 *********
  *******
   *****
    ***
     *
 */
func level6() {
  let num = Int(readLine()!)!
  
  var j = num * 2 - 1
  for i in 0 ..< num {
    print(String(repeating: " ", count: i) + String(repeating: "*", count: j))
    j = j - 2
  }
}
