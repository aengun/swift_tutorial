import UIKit

// Numeric Types
// 숫자

var myScore = 50 // Int

var myNumber = 50.0 // Double

//============================================

var myScore2:UInt = 50 // Unsigned Int : 음수를 넣을 수 없다.
// myScore2 = -50 //error


//============================================

var myScore3:Int8 = 15 // bit

// bit(=binary) => 2진수, 0과 1로만 나타낼 수 있다.
// 0 -> 1 -> 10 -> 11

// 3bit
// 000 101 ...

// 10진수 => 0123456789로 표현
// ... 9 -> 10 -> 11 -> 12
// 시계-시간, 달력-월 등
// 123456789 10 11 12 => 10진수를 넘어간다.

// Int8 : 8비트 숫자
// 00000000 ~ 11111111 : 256개 숫자를 표현 가능
// max, min으로 최대 최소 값을 알 수 있다.
Int8.max // 127
Int8.min // -128
UInt8.max // 256
UInt8.min // 0
// => 왜 쓰나? 비트단위로 데이터를 주고 받을 때 규격을 정하기 위해 사용함

String(myScore3, radix:2, uppercase: false) //비트로 표현하기
String(myScore3, radix:16, uppercase: true) //true면 대문자로 표현
String(myScore3, radix:16, uppercase: false) //false면 소문자로 표현


Int16.max
Int16.min
Int32.max
Int32.min
Int64.max
Int64.min
