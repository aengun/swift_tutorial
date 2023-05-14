import Foundation

// Closure2

// func + closure

func myFunc(closure: () -> Void) {
    
}

myFunc { // 클로저는 파라미터 생략됨
    <#code#>
}

//func + closure 2
func myFunc2(closure1: () -> Void, closure2: () -> Void) {
    print("func2")
    closure1()
    closure2()
}

myFunc2 { // 첫번째 클로저는 파라미터 생략됨
    print("clousre1")
} closure2: { // 두번째 클로저는 파라미터 생략 안됨
    print("clousre2")
}


func myFunc3(closure1: () -> Void, closure2: () -> Void, closure3: () -> Void) {
    print("func3")
    closure1()
    closure2()
    closure3()
}

myFunc3 {
    print("c1")
} closure2: {
    print("c2")
} closure3: {
    print("c3")
}

 
func myFunc4(a:Int, closure: () -> Void) {
    print(a)
    closure()
}

myFunc4(a: 50) {
    print("myfunc4 closure")
}



//clousre + parameter

func myFunc5(completion: (Int) -> Void) {
    print("func5..")
    let total = 100
    completion(total)
}

myFunc5 { total in
    print(total.description + "점")
}

func showScore(a:Int) { // (a:Int) -> Void 인데 Void는 생략 가능
    print((a+30).description + "점")
}

myFunc5(completion: showScore)


// closure + return

func myFunc6(completion: () -> Int) {
    print("myFunc6")
    completion() + 40
}

myFunc6 {
    return 10
}
