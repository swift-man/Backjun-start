//
//  level3.swift
//  backjun-start
//
//  Created by SwiftMan on 2021/09/06.
//

import Foundation
/*
 첫째 줄에는 별 N개, 둘째 줄에는 별 N-1개, ..., N번째 줄에는 별 1개를 찍는 문제
 첫째 줄에 N(1 ≤ N ≤ 100)이 주어진다.
 
 *****
 ****
 ***
 **
 *
 */
func level3() {
  let num = Int(readLine()!)!
  
  for i in 0 ... num {
    print(String(repeating: "*", count: num - i))
  }
}
