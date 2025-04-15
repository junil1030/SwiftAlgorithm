//
//  main.swift
//  Bronze
//
//  Created by 서준일 on 4/15/25.
//

import Foundation

// 문자열

let str = "abcdefghijklmnopqrstuvwxyz"
let str1 = str.prefix(3)    // abc
let str2 = str.suffix(3)    // xyz
let str3 = str.dropFirst(5) // fghijklmnopqrstuvwxyz
let str4 = str.dropLast(5)  // abcdefghijklmnopqrstu
let str5 = str.prefix(1000) // abcdefghijklmnopqrstuvwxyz

// 인덱스 접근
print(str[str.startIndex])                          // a
// print(str[str.endIndex])                         // Fatal error: String index is out of bounds
// 배열과 같은 개념으로 생각하면 됨 배열도 마지막 인덱스 접근 안되는 것 처럼
// print(str[1])                                    // 숫자 접근 불가능
print(str[str.index(after: str.startIndex)])        // b
print(str[str.index(before: str.endIndex)])         // z
print(str[str.index(str.startIndex, offsetBy: 1)])  // b

// 문자열 자르기
let subStr = str[str.index(str.startIndex, offsetBy: 2)..<str.index(str.startIndex, offsetBy: 5)]   // cde
let subStr2 = str[str.startIndex..<str.index(str.startIndex, offsetBy: 3)]                          // abc

// 문자열 뒤집기
let reverseStr = String(str.reversed())             // zyxwvutsrqponmlkjihgfedcba
// ReversedCollection<Self>형식이므로 String으로 변환해야함.

// 문자열 곱셈
let repeatStr = String(repeating: str, count: 3)    // abcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwxyz

// 문자열 교체
let replaceStr = str.replacingOccurrences(of: "def", with: "헬로헬로")  // abc헬로헬로ghijklmnopqrstuvwxyz
print(replaceStr)

// 문자열 접근
print(str.first!)
print(str.last!)


// 배열
let ary = [1, 2, 3]
let ary2 = [Int]()

// 배열 접근
print(ary.last!)    // 1
print(ary.first!)   // 3
print(ary2.first)   // nil 옵셔널로 동작
print(ary2.last)    // nil

// 정수를 배열로 변환
let x: Int = 123456
let aryX = String(x).map { Int(String($0))! }

print(aryX)
print(aryX[1]) // 배열은 서브스크립트 접근 가능

let answer: [String] = ["A", "B", "C"]
print(answer[0])
