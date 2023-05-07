import Foundation

// Control Flow (흐름 제어)

// for-in loops

let names = ["kim", "lee", "min"]
let numbers = [1,5,3,35,3,65]

for name in names {
    print(name)
}

for (index, name) in names.enumerated() { // 인덱스까지 가져오기
    print(name, index)
}

for number in numbers {
    print(number)
}

let myRange1 = (0...5)
let myRange2 = (0..<5)

for number in myRange1 {
    print(number)
}

for number in myRange2 {
    print(number)
}

print("============================================")

// ------ 건너뛰고 싶은 것

let minutes = 60

for minute in 0..<minutes {
    if(minute % 5 == 0) {
        print(minute)
    }
}

// 0..<minutes
for minute in stride(from: 0, to: minutes, by: 5) {
    print(minute)
}

// 0...minutes
for minute in stride(from: 0, through: minutes, by: 5) {
    print(minute)
}
