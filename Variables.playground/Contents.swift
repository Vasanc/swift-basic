import Foundation

let myName = "Vasan"
let yourName = "Lusu"

//myName = "blabla" --> error

var names = [myName, yourName]
names.append("Summa")
names.append("Suma")
print(names)

let ames = [myName, yourName]
//ames.append("Suma") --> error

var a = "abc"
var b = a

b = "a"
a

let cc = "abc"
var bb = cc

bb = "a"
cc


let n = 41
var af = 4_e12
let twoThousand: UInt16 = 2_0_00

//let op:Int! = 5
//print(op)
//
//let someValue:Int! = 5
//print(someValue)

let someVal:Double?
someVal = 5.6324

//print(someVal)
//Output : Optional(someVal)

let str:String?


//print(str!)
str = "Hello, World!"
print(str!)
//Output : Optional("Hello, World!")

var serverResponseCode: Int? = 404
// serverResponseCode contains an actual Int value of 404
serverResponseCode = nil
// serverResponseCode now contains no value
