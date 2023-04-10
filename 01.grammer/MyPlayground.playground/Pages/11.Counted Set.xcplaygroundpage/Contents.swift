//: [Previous](@previous)

import Foundation

// NSCountedSet

let colors: NSCountedSet = ["red", "orange", "blue"]

colors.count(for:"red") // 1
colors

colors.add("red")
colors.count(for:"red") // 2
colors

colors.remove("red")
colors.count(for:"red") // 1
colors
