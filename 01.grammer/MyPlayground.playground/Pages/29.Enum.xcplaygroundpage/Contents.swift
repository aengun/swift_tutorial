import Foundation

// Enumerations (열거형)
// enum

// 생성

enum GenderType:String {
    case man = "남자"
    case woman = "여자"
    case type1
    case type2
}

var genderType1 = GenderType.woman
var genderType2: GenderType!

func showGender(type:GenderType) {
    print(type)
//    print("성별 : " + type)// 에러 : type은 String형이 아니다
    print("성별 : " + type.rawValue) // -> Enum의 타입을 설정해야함
}

showGender(type: .man) // .man, GenderType.man 둘 다 가능

showGender(type: .type1)

func showGender2(type: GenderType) {
    switch type {
    case .man:
        print("남")
    case .woman:
        print("여")
    default:
        break;
    }
}

showGender2(type: .man)



// caseIterable

enum Beverage: CaseIterable {
    case coffee
    case juice
    case tea
}

let beverage = Beverage.allCases

for beverage in Beverage.allCases {
    print(beverage)
}




enum Beverage2: String, CaseIterable {
    case coffee
    case juice
    case tea
}

let beverage2 = Beverage2.allCases

for beverage2 in Beverage2.allCases {
    print(beverage2.rawValue + " aa")
}




var myBeverage = Beverage2.coffee

func findBeverage(name: String) {
    Beverage2.allCases.forEach { beverage2 in
        if beverage2.rawValue == name {
            print("타입에 맞는 음료가 있음.", beverage2)
            myBeverage = beverage2
        }
    }
}

findBeverage(name: "juice")
myBeverage



// 타입을 선택 + 값

enum Rectangle {
    case triangle(width: Int, height: Int, angle: Int)
    case circle(radius: Int)
}

var triangle = Rectangle.triangle(width: 100, height: 50, angle: 90)

if case let Rectangle.triangle(width, height, angle) = triangle {
    print(width, height, angle)
}

triangle = .circle(radius: 60)

switch triangle {
    case .triangle(let width, let height, let angle):
        print(width, height, angle)
    case .circle(let radius):
        print("radius : ", radius)
    default:
        break;
}

switch triangle {
    case let .triangle(width, height, angle):
        print(width, height, angle)
    case let .circle(radius):
        print("radius : ", radius)
}


switch triangle {
    case let .triangle(width, height, angle):
        print(width, height, angle)
    case var .circle(radius):
        radius = 500 // var이면 지역변수로 이 안에서만 값을 바꿀 순 있다
        print("radius : ", radius)
}

