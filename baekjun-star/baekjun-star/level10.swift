//
//  level10.swift
//  baekjun-star
//
//  Created by SwiftMan on 2021/09/08.
//

import Foundation
/*
 재귀적인 패턴으로 별을 찍어 보자. N이 3의 거듭제곱(3, 9, 27, ...)이라고 할 때, 크기 N의 패턴은 N×N 정사각형 모양이다.
 크기 3의 패턴은 가운데에 공백이 있고, 가운데를 제외한 모든 칸에 별이 하나씩 있는 패턴이다.
 ***
 * *
 ***
 
 N이 3보다 클 경우, 크기 N의 패턴은 공백으로 채워진 가운데의 (N/3)×(N/3) 정사각형을 크기 N/3의 패턴으로 둘러싼 형태이다. 예를 들어 크기 27의 패턴은 예제 출력 1과 같다.
 
 ***************************
 * ** ** ** ** ** ** ** ** *
 ***************************
 ***   ******   ******   ***
 * *   * ** *   * ** *   * *
 ***   ******   ******   ***
 ***************************
 * ** ** ** ** ** ** ** ** *
 ***************************
 *********         *********
 * ** ** *         * ** ** *
 *********         *********
 ***   ***         ***   ***
 * *   * *         * *   * *
 ***   ***         ***   ***
 *********         *********
 * ** ** *         * ** ** *
 *********         *********
 ***************************
 * ** ** ** ** ** ** ** ** *
 ***************************
 ***   ******   ******   ***
 * *   * ** *   * ** *   * *
 ***   ******   ******   ***
 ***************************
 * ** ** ** ** ** ** ** ** *
 ***************************
 
 첫째 줄에 N이 주어진다. N은 3의 거듭제곱이다. 즉 어떤 정수 k에 대해 N=3k이며, 이때 1 ≤ k < 8이다.
 */

func blank(i: Int, j: Int, num: Int, input: Int, array: inout [[Character]], dp: inout [[Bool]]) {
  if dp[i][j] {
    return
  }
  dp[i][j] = true
  
  for k in i ..< i + num {
    for o in j ..< j + num {
      array[k][o] = Character(" ")
    }
  }
  
  if i + num * 3 < input {
    blank(i: i + num * 3, j: j, num: num, input: input, array: &array, dp: &dp)
  }
  
  if j + num * 3 < input {
    blank(i: i, j: j + num * 3, num: num, input: input, array: &array, dp: &dp)
  }
}

func level10() {
  let input = Int(readLine()!)!
  
  var array = [[Character]](repeating: [Character](repeating: Character("*"), count: input), count: input)
  var dp = [[Bool]](repeating: [Bool](repeating: false, count: input), count: input)
  
  var power = 3
  while power < input {
    blank(i: power, j: power, num: power, input: input, array: &array, dp: &dp)
    power = power * 3
  }
  
  for i in stride(from: 0, to: input, by: 3) {
    for j in stride(from: 0, to: input, by: 3) where dp[i][j] == false {
      array[i + 1][j + 1] = Character(" ")
    }
    print(String(array[i]))
    print(String(array[i+1]))
    print(String(array[i+2]))
  }
}
