//: [Previous](@previous)

import Foundation

// Optional Type
// 정의 - 값이 있을 수도 있고 없을 수도 있다.
// 표현 - ?
// 값이 없다라는 개념 - nil(다른 언어에서 null과 비슷)

var age1: Int = 0
var age2: Int? = nil //메모리에 올라가지 않음

var str1: String = ""
var str2: String? = nil

if str2 == nil {
    print("글자를 쓰지 않았다")
}


var myFavorite: [String]?

if myFavorite == nil {
//    print("내 즐겨찾기 갯수가 0개다") // 이런개념이 아니다.
    print("내 즐겨찾기 갯수를 받아오는데 실패했습니다.")
    // 실제로 이런 경우 서버에서 오류가 난 경우이기 때문에
    // myFavorite을 초기화하면 안 된다!!!
    // 잘못되었다는 것을 사용자에게 인식시켜야함!
}



