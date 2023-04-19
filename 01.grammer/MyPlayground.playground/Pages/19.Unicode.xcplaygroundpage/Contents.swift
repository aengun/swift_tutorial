//: [Previous](@previous)

import Foundation

// unicode
// 문자 : 내부적으로 특정한 코드값(16진수)

"a"
"\u{61}"
"\u{61}" == "a"

"0"
"\u{30}"
"\u{30}" == "0"

// 숫자만 입력
let inputValue = "4"

if(inputValue >= "\u{30}" && inputValue <= "\u{39}"){
    print("숫자")
} else {
    print("숫자 아님")
}


// 한글만 입력
"가"
UnicodeScalar("가")
// 44032 -> 16진수로 변경해야함
String(44032, radix:16)
"힣" // 한글 마지막 글자
UnicodeScalar("힣")
String(55203, radix:16)

let inputValue2 = "뷁"
if(inputValue2 >= "\u{ac00}" && inputValue2 <= "\u{d7a3}"){
    print("한글")
} else {
    print("한글 아님")
}
