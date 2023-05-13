import Foundation

// Closure
// 함수와 개념이 같음.

// function(named closure)
func plus(a:Int, b:Int) -> Int {
    return a+b
}

// closure(unnamed closure)
//{ (a:Int, b:Int) -> Int in
//    return a+b
//}


// 변수나 상수에 closure를 대입
var myClosure = { (a:Int, b:Int) -> Int in
    return a+b
}

plus(a:10, b:20)
myClosure(10, 20) // closure는 (a:10, b:20) 이렇게 쓰면 안됨


// Function의 paramemter에 closure를 넣어서 사용하는 방식

func f1() {
    print("작업중..")
    print("작업중...")
    
}
func f2(){
    print("작업완료처리")
}
// 실제 로직 : f1을 실행하고 f2를 실행해야하는 프로세스의 호출방식
//f1()
//f2()

// -> 클로저를 이용하여 다음처럼 바꿀 수 있다.

func f10(myClosure: () -> Void) {
    print("작업중..")
    print("작업중...")
    
    myClosure()
}

func f20(){
    print("작업완료처리")
}

f10(myClosure: { () -> Void in f20() })
f10(myClosure: {f20()}) // () -> Void 이면 in까지 지워도 됨
f10{ f20() } // closure타입의 파라미터도 지울 수 있다

f10{print("내가 원하는 로직")}
