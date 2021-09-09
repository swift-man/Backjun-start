//
//  level11.swift
//  baekjun-star
//
//  Created by SwiftMan on 2021/09/09.
//

import Foundation
/*
 예제를 보고 규칙을 유추한 뒤에 별을 찍어 보세요.
 첫째 줄에 N이 주어진다. N은 항상 3×2k 수이다. (3, 6, 12, 24, 48, ...) (0 ≤ k ≤ 10, k는 정수)
 
                       *                        0
                      * *                       1
                     *****                      2
                    *     *                     3
                   * *   * *                    4
                  ***** *****                   5 // 11
                 *           *                  6
                * *         * *                 7
               *****       *****                8
              *     *     *     *               9
             * *   * *   * *   * *              0
            ***** ***** ***** *****             1 // 12 23
           *                       *            2
          * *                     * *           3
         *****                   *****          4
        *     *                 *     *         5
       * *   * *               * *   * *        6
      ***** *****             ***** *****       7
     *           *           *           *      8
    * *         * *         * *         * *     9
   *****       *****       *****       *****    0
  *     *     *     *     *     *     *     *   1
 * *   * *   * *   * *   * *   * *   * *   * *  2
***** ***** ***** ***** ***** ***** ***** ***** 3 // 47
01234567890123456789012345678901234567890123456
          1         2  2      3         4
 */

func level11() {
  let input = Int(readLine()!)!

  var array = [
    "  *   ",
    " * *  ",
    "***** "]

  var num = 3
  while num < input {
    let count = array.count
    
    var temp: [String] = []
    
    for a in array {
      temp.append(a + a)
    }
    
    for i in 0 ..< count {
      var str = array[i]
      str = String(repeating: " ", count: count) + str + String(repeating: " ", count: count)
      array[i] = str
    }
    
    array.append(contentsOf: temp)
    num *= 2
  }

  for s in array {
    print(s)
  }
}
