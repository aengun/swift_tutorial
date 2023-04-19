import Foundation

//Operation

// Comparison Operators
// 비교

// equal ==
// not equal !=
// a > b
// a >= b
// a < b
// a <= b

var a = ["aaa", "bbb"]
var b = ["aaa", "bbb"]

a == b

if(a == b) {
    print("true")
} else {
    print("false")
}

if(a != b) {
    print("true")
} else {
    print("false")
}


// Ternary Conditional Operation
// 삼항연산자
var a1 = "a"
var b1 = "b"
a1 > b1 ? print("true") : print("false")


// Range Operator
// 범위 0...5 : closed Range
// 0..<5 : halp-open Range

// for-in loop
for index in 0..<5 {
    print(index)
}

let names = ["kim", "lee", "park", "alex", "jack"]

for index in 0..<names.count{
    print(names[index])
}
print()
for name in names {
    print(name)
}
print()
for name in names[1...] {
    print(name)
}
print()
for name in names[...3] {
    print(name)
}
print()

// Logical Operator
// Logical And
var isGreen = true
var isRed = true

if(isGreen && isRed) {
    print("both true")
} else {
    
}

// Logical Or
if isGreen || isRed || isRed {
    
}

// Logical not
if !isRed {
    print("not red")
}

isRed
!isRed
isRed.toggle() // 값을 반전시킴 >> 원본값이 바뀜
isRed
