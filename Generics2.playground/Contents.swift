//: Playground - noun: a place where people can play

import UIKit

func swapValues<Element>(inout generic1: Element, inout _ generic2: Element) {
    (generic1, generic2) = (generic2, generic1)
}

func swappedValues<Element>(generic1: Element, _ generic2: Element) -> (Element, Element) {
    return (generic2, generic1)
}

var str1 = "string 1"
var str2 = "string 2"

swapValues(&str1, &str2)

str1
str2

(str1, str2) = swappedValues(str1, str2)

str1
str2

var int1 = 1
var int2 = 2

swapValues(&int1, &int2)

int1
int2

(int1, int2) = swappedValues(int1, int2)

int1
int2

// MARK: -

//func add<T>(a: T, _ b: T) -> T {
//    return a + b
//}
//
//let a = 1.5
//let b = 100.9
//
//let c = add(a, b)

// MARK: -

func makeSet<T>(elements: T...) -> [T] {
    var set = [T]()
    for element in elements {
        set += [element]
    }
    return set
}

let set: [Int] = makeSet(1, 2, 4)

[1, "B", UIView()].map { $0 }
