//: [Previous](@previous)

import Foundation

// Set Type

var numbers1: Set = [1,2,3,4,5] // 타입추론(int)
var numbers2: Set<Int> = [1,2,3,4,5]
var numbers3 = Set([1,2,3,4,5])
numbers1

// empty Set
var numbers4 = Set<Int>()
var numbers5 : Set<Int> = []

// add
numbers1.insert(100) // 값이 없을 때만 들어간다. => true
numbers1.insert(100) // => false

numbers1.insert(200).inserted // true
numbers1.insert(200).inserted // false

// update : 덮어쓰기
numbers1.update(with: 100) // 100 => 기존의 값이 있는 경우
numbers1.update(with: 1000) // nil => 기존의 값이 없는 경우
numbers1

// remove
numbers1.remove(100) // 100 : 있는 값
numbers1.remove(50) //nil : 없는 값
numbers1

// set은 내부적으로 index가 관리된다.
numbers1.firstIndex(of: 100) // nil
let setIndex = numbers1.firstIndex(of: 1000)
numbers1.remove(at: setIndex!)
numbers1

numbers1.removeFirst()
numbers1
 
