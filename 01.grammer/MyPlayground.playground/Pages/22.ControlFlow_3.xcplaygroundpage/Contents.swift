import Foundation

// Control Flow(흐름 제어)
// Switch case

var number = 10

switch number {
case 3:
    print("삼")
case 5:
    print("오")
case 10:
    print("십")
case 10...100:
    print("십 ~ 백")
default:
    print("기타 숫자")
}

var someString = "b"

switch someString {
case "a":
    print("에이")
case "c"..."f":
    print("씨 ~ 에프")
case "g", "z":
    print("쥐, 지")
default:
    break
    print("기타 문자")
}


// switch case let

let media = ("abc음악", 180)

switch media {
case let(title, length):
    print("제목", title)
    print("길이", length)
}
