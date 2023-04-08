//: [Previous](@previous)

import Foundation

// Booleans Type

// true, false

var isTop = false
var hasColor: Bool = false

hasColor = true
hasColor = true
hasColor = "hello".contains("o")
hasColor = "hello".contains("lll")

hasColor = 5 > 4

hasColor = !false

hasColor.toggle() // 반대값으로 바꾸기
print(hasColor)

if hasColor == true { // true일 때 실행되는 로직
    print("yes")
} else { // true일 때 실행되는 로직
    print("no")
}

if hasColor {
    print("yes")
} else {
    print("no")
}
