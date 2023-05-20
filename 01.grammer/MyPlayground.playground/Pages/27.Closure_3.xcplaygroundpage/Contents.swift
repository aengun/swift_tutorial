import Foundation

// Closure 3

// Capturing Value

// reference type (class, function, closure)
// value type (Int, String, Array, Dictionary, struct)

var str = "a"
var str2 = str // 복제
var str3 = str2 // 복제

//class SomeClass {
//    var b = 10
//}
//
//var myClass = SomeClass()
//
//var myClass2 = myClass // 참조 : 원본은 myClass뿐
//var myClass3 = myClass2 // 참조
//
//myClass.b
//myClass.b = 14
//myClass3.b //14


class SomeClass {
    var b = 10
    
    deinit { // 메모리에서 해제될 때 호출
            print("SomeClass deinit")
    }
    
    var myClosure = {
//        print(b)
        // myClosure가 만들어질 때 b도 만들어짐
        // => 동시에 만들어지기 때문에 참조가 불가
        // 해결법 : lazy
    }
    
//    lazy var myClosure2 = {
//        print(self.b)
//    }
    
    // capturing value
    lazy var myClosure2: (() -> Void)? = {
        print(self.b)
    }
    
}

var myClass:SomeClass? = SomeClass() // optional => nil 가능

var myClass2 = myClass // 참조 : 원본은 myClass뿐
var myClass3 = myClass2 // 참조

myClass?.b
myClass?.b = 14
myClass3?.b //14

myClass?.myClosure2 // lazy는 호출할 때 생성됨
// 위행이 있으면 nil 할당으로 메모리해제가 불가
// 주석처리하면 myClass3까지 nil 할당시 메모리가 해제됨(deinit 실행)
// 이유 : b를 capturing(참조)하고 있기 때문이다.
// 해결방법 : myClosure을 옵셔널로 만들고 nil을 할당하면 된다.
myClass?.myClosure2 = nil

myClass = nil
myClass2 = nil
myClass3 = nil

// nil로 만드는 것이 번거로울 때
// capture list
class SomeClass2 {
    var b = 10

    deinit { // 메모리에서 해제될 때 호출
            print("SomeClass2 deinit")
    }
    
    // b를 복사하는 개념(참조가 아니다)
    // myClass4를 nil하면 deinit이 실행됨(근데 난 왜 안되지..?)
    lazy var myClosure3 = { [b] in
        print(self.b)
    }
}

var myClass4: SomeClass2? = SomeClass2()
myClass4?.b
myClass4?.myClosure3
myClass4 = nil




// myClosure에 self처럼 참조가 들어갈 경우
// self만 쓰면 참조 해제가 안됨
class SomeClass3 {
    var b = 10

    deinit { // 메모리에서 해제될 때 호출
            print("SomeClass3 deinit")
    }

    lazy var myClosure3 = { [weak self] in
        // reference count가 늘어나지 않는다.
        print(self?.b ?? 0)
    }
}

var myClass5:SomeClass3? = SomeClass3()
myClass5 = nil
