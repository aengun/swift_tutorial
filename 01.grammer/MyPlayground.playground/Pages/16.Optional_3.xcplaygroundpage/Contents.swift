//: [Previous](@previous)

import Foundation

// Optional
// 문법, unwrapping

// 옵셔널로 래핑되어있다.(wrap)
var myAge1: Int? = 20
var myAge2: Optional<Int> = 40


// if Statements

if myAge1 == nil {
    // nil일 때 처리
}
if myAge1 != nil {
    // nil이 아닐 때 처리
}



// Optional Binding1
// if let(var)
var sum = 0
//myAge1 = nil
if let age = myAge1 {
    // myAge1가 unwrapping이 가능한 경우,
    // 즉, nil이 아닌 경우 로직
    sum = age + 1
}
sum


// Optional Binding2
// guard let(var)
//myAge1 = nil // 여기가 활성화되면 error을 뱉는 로직
guard let age2 = myAge1 else {
    // 중단시키는 로직이 필요
//    return
    fatalError("여기는 Nil이 나오면 안되는 부분입니다.")
}
// 위에서 중단되지 않으면 아래 로직이 실행되도록 한다.
age2 + 1
