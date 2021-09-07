//
//  level2.swift
//  baekjun-star
//
//  Created by SwiftMan on 2021/09/06.
//

import Foundation
/*
 첫째 줄에는 별 1개, 둘째 줄에는 별 2개, N번째 줄에는 별 N개를 찍는 문제
 하지만, 오른쪽을 기준으로 정렬한 별(예제 참고)을 출력하시오.
 
    *
   **
  ***
 ****
*****
 */
func level2() {
  let num = Int(readLine()!)!
  
  for i in 1 ... num {
    print(String(repeating: " ", count: num - i) + String(repeating: "*", count: i))
  }
}
