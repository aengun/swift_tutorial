import Foundation

// Control Flow(흐름 제어)

// while
// 반복 끝이 정해지지 않을 때

// 주사위(1~6)
// 주사위 홀수 -1
// 주사위 짝수 +2
// 목표 10까지 도달

var dice = 0
var myPosition = 0

while myPosition < 10 {
    dice = Int.random(in: 1...6) // 난수 만들기
    if(dice % 2 == 0) {
        myPosition += 2
    } else if myPosition > 0 {
        myPosition -= 1
    }
    
    print("dice", dice)
    print("myPosition", myPosition)
}
print("end")
