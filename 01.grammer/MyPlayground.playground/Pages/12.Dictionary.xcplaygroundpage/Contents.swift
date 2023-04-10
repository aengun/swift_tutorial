//: [Previous](@previous)

import Foundation

// Dictionary

// 생성
// empty dictionary
let names1 = Dictionary<String, String>()
let names2 = [String : String]()
var names3: [String : String] = [:]

var names4 = ["cityA" : "seoul", "cityB" : "busan"]

names4.count
names1.isEmpty

// 직접 입력 추가
names4["cityC"] = "tokyo"
names4["cityD"] = "baijing"
names4.updateValue("incheon", forKey: "cityE")
names4


// Dictionary + Dictionary (합치기)
names3["cityE"] = "bucheon"
names3["cityF"] = "berlin"
names3
names4
let mergingDic = names3.merging(names4) { leftValue, rightValue in
    return leftValue
}
mergingDic // 중복키인 cityE는 names3의 값을 가져옴, rightValue로 하면 incheon이 됨

// 삭제
names3["cityF"] = nil
names3.removeValue(forKey:"cityF")
names3.removeAll()
names3

// 업데이트
names3["cityA"] = "seoul"
names3
names3["cityA"] = "hawaii"
names3
