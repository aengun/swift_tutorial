import Foundation

var someString: String = ""

func sayHello() {
    print("hello")
}

sayHello

// () -> ()
// () -> void  이 두개는 같은 의미

func plus(a:Int, b:Int) -> Int {
    return a+b
}

func minus(a:Int, b:Int) -> Int {
    return a-b
}

var inputValue1 = 4
var inputValue2 = 5

func selectButto(buttonStyle: String){
    if buttonStyle == "+" {
        plus(a:inputValue1, b:inputValue2)
    } else if buttonStyle == "-" {
        minus(a:inputValue1, b:inputValue2)
    }
}


//function 자체도 담아서 사용할 수 있다.
var calc: ((Int, Int) -> Int)?

func selectButto2(buttonStyle: String){
    if buttonStyle == "+" {
        calc = plus
    } else if buttonStyle == "-" {
        calc = minus
    }
}

func showResult() {
    calc?(inputValue1, inputValue2)
}
