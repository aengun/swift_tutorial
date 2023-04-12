//: [Previous](@previous)

import Foundation

// Operators
// 연산자

// Assignment Operator(할당)
// =
var age = 10
var age2 = 20

age = 50
age = age2

var (age3, age4) = (10, 20)
age3
age4



// Arithmetic Operator
1 + 2
1 * 2
1 - 2
1 / 2
1.0 / 2.0

var str1 = "Hello"
var str2 = "world"
let newStr = str1 + " " + str2

// Array +
var arr1 = ["a", "b", "c"]
var arr2 = ["x", "y", "z"]

var newArr = arr1 + arr2


// Remaindetr Operator
// %
var num1 = 5
var num2 = 3
num1 % num2

var num3: Double = 8
var num4: Double = 3
//num3 % num4 // 기본적으로 Int타입만 가능
num3.truncatingRemainder(dividingBy: num4)

num3.remainder(dividingBy: num4)
// truncatingRemainder와 다른 결과
// 이유 :
num3 / num4
// => 몫이 가장 가까운 정수인 3이 되고 나머지가 -1이 됨



var a = 10
a = a+1
a += 10
a = a-5
a -= 5
