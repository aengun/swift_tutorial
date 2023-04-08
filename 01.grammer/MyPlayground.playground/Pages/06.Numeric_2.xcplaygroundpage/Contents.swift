//: [Previous](@previous)

import Foundation

// Numeric Types 2

var myScore = 1000000

var myScore1 = 1_000_000 //이렇게 쓰는 것도 허용됨

myScore == myScore1

var myBit = 00010001 // 10001
var myBit2 = 0b0001_0001 // 17 : bit로 표현하려면 0b 사용
// 0o : 8진수, 0x : 16진수
var myBit3 = 0x1f


// remainder %
var anyNum = 10
var remainder = (anyNum % 2 == 0)
if(anyNum % 2 == 0){
    //짝수
} else {
    //홀수
}

var num1 = 0.7
var num2 = 0.2
var sum = num1 + num2 // 0.89999999
// 0.9가 아님!!
// why ? 2진수로 변환되어 계산이 된다. ==> 2진수 소수 계산 검색해볼 것

//해결법
Decimal(sum) // 0.9


