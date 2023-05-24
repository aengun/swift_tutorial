import Foundation


// Struct, Class
// 구조체, 클래스


// 생성

struct Score1 {
    // property
    var myScore = 0
    var yourScore = 0
    
    // method : 구조 안에 들어있는 Function
    func presentScore() {
        print(myScore, yourScore)
    }
}

var score1 = Score1()
score1.presentScore()

score1.myScore = 100
score1.presentScore()



class Score2 {
    var myScore = 0
    var yourScore = 0
    
    func presentScore() {
        print(myScore, yourScore)
    }
}

var score2 = Score2()
score2.presentScore()
score2.yourScore = 50
score2.myScore = 100
score2.presentScore()

// 초기값이 없는 struct
// 비교 : struct는 init이 없어도 자동생성됨 : memberwise initializer
struct Score3 {
    var myScore :Int
    var yourScore :Int
    var otherScore :Int
    
    func presentScore() {
        print(myScore, yourScore)
    }
}

//var score3 = Score3() // 에러
var score3 = Score3(myScore: 10, yourScore: 20, otherScore: 30) // 이와 같이 초기화 한다.


// 초기값이 없는 class
class Score4 {
    var myScore :Int
    var yourScore :Int
    var otherScore :Int
    
    init(myScore: Int, yourScore: Int, otherScore: Int){
        self.myScore = myScore
        self.yourScore = yourScore
        self.otherScore = otherScore
    }
    
    func presentScore() {
        print(myScore, yourScore)
    }
}

//var score3 = Score3() // 에러
var score4 = Score4(myScore: 10, yourScore: 20, otherScore: 30) // 이와 같이 초기화 한다.







// Memory
// Value type(복사)
// : struct, enum, tuple, String, Array, Dictionary

// Reference type(참조)
// : class, func, closure



struct Score5 {
    var myScore :Int
    var yourScore :Int
    var otherScore :Int
    
    func presentScore() {
        print(myScore, yourScore)
    }
}

var score5 = Score5(myScore: 10, yourScore: 20, otherScore: 30)
// value type(복사)
var scoreA = score5
var scoreB = scoreA

score1.myScore = 100
scoreB.myScore


class Score6 {
    var myScore :Int
    var yourScore :Int
    var otherScore :Int
    
    init(myScore: Int, yourScore: Int, otherScore: Int){
        self.myScore = myScore
        self.yourScore = yourScore
        self.otherScore = otherScore
    }
    
    func presentScore() {
        print(myScore, yourScore)
    }
}

var score6 = Score6(myScore: 10, yourScore: 20, otherScore: 30)
// reference type(참조)
var scoreAA = score6
var scoreBB = scoreAA

score6.myScore = 6000
scoreBB.myScore

scoreAA.myScore = 1000
score6.myScore


// 특징
// value type -> stack영역
// - 각각 따로 관리되기 때문에 원본에 대한 관리가 필요 없음
// - 덩치가 크면 복사에 많은 메모리 사용(현재는 개선됨, 값이 바뀔 때만 복제하고 나머지는 참조하는 형식임) : copy on write(COW)로 성능 저하 방지

// reference type -> heap영역
// - 원본에 대한 관리 필요(멀티 스레드 환경에서 오류발생 가능성)


// 메모리 영역

// 1. text segment(code segment)
// - execution code

// 2. data segment
// - Global, static
// - program lifecycle

// 3. stack segment
// - Autoimatically allocated and released
// - value type(struct)
// - small memory
// - fast
// - LIFO

// 4. heap segment
// - Allocated and released by programmer
// - reference type(class)
// - large memory
// - slow
// - tree
