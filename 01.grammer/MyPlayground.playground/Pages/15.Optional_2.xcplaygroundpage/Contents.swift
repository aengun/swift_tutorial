//: [Previous](@previous)

import Foundation

// Optional
// 문법, unwrapping

// 옵셔널로 래핑되어있다.(wrap)
var myAge1: Int? = 20
var myAge2: Optional<Int> = 40


//var sum = myAge1 + 1 // error : value of optional type 'Int?' must be unwrapped to a value of type 'Int' => 옵셔널을 없애야 한다.

// force unwrapping(강제)
var sum = myAge1!+1

// 주의사항 (아래 코드는 확신이 있을때만 사용!!!)
//myAge1 = nil
//myAge1! // 앱이 죽는 에러


// nil coalescing
//myAge1 = nil
var sum2 = (myAge1 ?? 100) + 1 // nil이면 100을 넣는다



