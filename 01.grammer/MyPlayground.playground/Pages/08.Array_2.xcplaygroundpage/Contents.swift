//: [Previous](@previous)

import Foundation

// add : 마지막 인덱스에 값 추가
var numbers10 = [4, 5, 10, 23, 0, 4, 3, 2, 1]
numbers10.append(100)
numbers10.append(101)
numbers10.append(102)

// insert : 특정 인덱스에 추가
numbers10.insert(500, at:5)

// 다른 배열을 추가하기
var numbers11 = [111, 222]
numbers10.append(contentsOf: numbers11)
numbers10.insert(contentsOf: numbers11, at:1)

// remove
var numbers20 = [4, 5, 10, 23, 0, 4, 3, 2, 1]
//numbers20.remove(at: 3) // return : 지운 값을 리턴함
var removeNumber = numbers20.remove(at: 3) // return : 지운 값을 리턴함
numbers20
removeNumber

numbers20.removeFirst() // 첫 번째 값 지우기
numbers20.removeLast() // 마지막 값 지우기
numbers20.removeFirst(2) // 첫 번째 부터 2개 지우기
numbers20.removeLast(2) // 뒤에서 2개 지우기


// replace : 수정
var numbers30 = [4, 5, 10, 23, 0, 4, 3, 2, 1]
numbers30[2] = 500 // [?] : ?인덱스에 접근
numbers30[5] = 100

// read
numbers30.first // numbers30[0]
numbers30.last
// numbers30[9] // error : index out
let numberCount = numbers30.count
numbers30[numberCount - 1]
