//: [Previous](@previous)

import Foundation

let numbers1:Set = [1,2,3,4,5]
let numbers2:Set = [4,5,6,7,8]

// 합집합
numbers1.union(numbers2)

// 교집합
numbers1.intersection(numbers2)

// 대칭차집합(합집합 - 교집합)
numbers1.symmetricDifference(numbers2)

// 여집합
numbers1.subtracting(numbers2)
numbers2.subtracting(numbers1)

// 한쪽에 모두 포함 여부
let numbers3: Set = [1,2,3,4,5]
let numbers4: Set = [1,5]

numbers3.isSubset(of: numbers4)
numbers4.isSubset(of: numbers3)

numbers3.isSuperset(of: numbers4)
numbers4.isSuperset(of: numbers3)

// 한쪽에 모두 불포함 여부
let numbers5: Set = [1,2,3,4,5]
let numbers6: Set = [6,7]

numbers5.isDisjoint(with: numbers6)
