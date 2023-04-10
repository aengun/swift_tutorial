//: [Previous](@previous)

import Foundation

// 생성
var someTuple1 = (100, "kim", false)
someTuple1
var someTuple2: (String, Int) = ("100", 50)
someTuple2

// 조회
someTuple1.2
someTuple1.1
someTuple1.0
// 위와 같이 사용하는 것은 비추
// 다음과 같이 써라
var someTuple3 = (score : 100, userName : "kim", isShowName : false)
someTuple3.score
someTuple3.userName

// 이름 없는 튜플의 값 조회
var (score, name, isShowName) = someTuple1
score

// 업데이트
someTuple3.score = 50
someTuple3


