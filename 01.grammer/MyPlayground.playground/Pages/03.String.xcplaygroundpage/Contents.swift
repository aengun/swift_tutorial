//: [Previous](@previous)

import Foundation

//String Type
//문자열

var greeting = "hello"
print(greeting)

greeting = "hel\"nlo" //큰따옴표 사용하기
print(greeting)

greeting = "hel\nlo"
print(greeting)


greeting = //큰따옴표 세개
"""
hi
hello
welcome
"""
print(greeting)


//=====================================

greeting = "hello"

greeting = greeting + " welcome"
print(greeting)

greeting.count

greeting.uppercased()
greeting.lowercased()
greeting.capitalized

greeting.dropFirst() //첫글자 지우기
greeting.dropLast() //마지막글자 지우기
//greeting.dropLast()
//greeting.dropLast()여러번 쓴다고 계속 지워지는 건 아님
greeting.dropLast().dropLast()//이런 식으로는 가능

greeting.hasPrefix("http") // "http"로 시작하는 지 판단
greeting.hasSuffix(".pdf") // ".pdf"로 끝나는 지 판단
greeting.contains("llo") // "llo"를 포함하는 문자열인지 판단


