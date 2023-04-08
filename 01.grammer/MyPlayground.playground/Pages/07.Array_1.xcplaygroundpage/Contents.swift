//: [Previous](@previous)

import Foundation

// swift에서 collection
// 1. array 2. set 3. dictionary

// Array Type

// Int Array
var Numbers1 = [4, 5, 10, 23, 0, 4, 3, 2, 1]
var Numbers2: [Int] = [4, 5, 10, 23, 0, 4, 3, 2, 1]
var Numbers3: Array<Int> = [4, 5, 10, 23, 0, 4, 3, 2, 1] // Array<Int> 와 [Int]는 같다

// 1 ~ 10
var numbers4 = Array<Int>(1...10)
var numbers5 = [Int](1...10)

// 1, 1, 1, 1, 1
var numbers6 = Array(repeating: 0, count: 5)


//================================================================================

// String Array
var strings = ["lee","kim"]

// empty Array
// var emptyArray = [] // error : 빈 배열을 타입을 명시해야 한다.
var emptyArray1: [String] = []
emptyArray1.count
var emptyArray2: [String] = Array() // 위와 같은 표현
var emptyArray3 = Array<String>()
//var emptyArray4 = [String] // error => ()로 인스턴스화 해야함
var emptyArray4 = [String]()


// Any Array : 다양한 타입을 한 번에 넣고 싶은 경우
var anyArray: [Any] = [0, "lee"]



