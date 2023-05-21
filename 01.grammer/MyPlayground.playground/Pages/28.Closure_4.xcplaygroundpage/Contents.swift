import Foundation

// Closure 4

// escaping clousre(탈출)

//function showString(completion: () -> Void) {
//    completion() // function이 끝나기전에 completion이 실행되고 끝남
//}
//
//showString {
//    print("a")
//}



// 밖에서 실행할 수 있도록

//var myClosureList = [()->Void]()
//var myClosureList2 = [()->Void] = [] // 위와 같음
//
//func showString2(completion: @escaping () -> Void) {
//    myClosureList.append(completion)
//}
//
////담기
//showString2 {
//    print("aa")
//}
//
//showString2 {
//    print("aa")
//}
//
////실행하기
//myClosureList.forEach{ completion in
//    completion()
//}



var names = ["lee", "kim", "jim", "min"]

names.sort(by: {(str1: String, str2:String) -> Bool in
    return str1 > str2
})

names.sort(by:{(str1, str2) in
    return str1 > str2
})

names.sort{(str1, str2) in
    return str1 > str2
}

names.sort { str1, str2 in
    return str1 > str2
}

names.sort { $0 > $1 }

names.sort(by: > )
