import Foundation

// Function (함수)

// 화면에 xx점이라고 표현되게 만들겠다.

func presentMyScore(score:Int) {
    print(score.description + "점")
}

//presentMyScore(score: "aa") // 타입이 안 맞음 Cannot convert value of type 'String' to expected argument type 'Int'

presentMyScore(score: 97)

func presentScore(myScore: Int, yourScore: Int) {
    print(myScore.description + " vs " + yourScore.description)
}

presentScore(myScore: 98, yourScore: 33)




// function return

// 더하기 기능을 만들어서 결과를 다른 곳에 사용하고 싶다.

func plus(number1: Int, number2: Int) -> Int {
    return number1 + number2
}

let sumResult = plus(number1: 50, number2: 44)
print(sumResult)



// 파라미터가 없는 경우
func printHello(){
    print("hello")
}

printHello()

func printHello2() -> String {
    print("hello2")
    return "hello2"
}

printHello2() + "안녕"


// multiple return values
func scoreList() -> [Int] {
    // xxxx 어떤 로직
    return [50, 30, 60]
}

scoreList()

func scoreList2() -> (eng:Int, music:Int) {
    return(50, 60)
}

scoreList2().eng
scoreList2().music


// argument labels, parameter name
func sumNumber(num number1: Int,num number2: Int){
    number1 + number2
}

sumNumber(num: 80, num: 40)

// 호출하는 함수에서 이름을 할당하고 싶지 않을 때
func sumNumber2(_ number1: Int,_ number2: Int){
    number1 + number2
}

sumNumber2(80, 40)


// In-Out Parameters
// inout

var myScore = 60

func plusFive() {
    myScore += 5
}

myScore
plusFive()
myScore


func plusFive2(score: inout Int) {
    score += 5
}

myScore
plusFive2(score: &myScore)
myScore


