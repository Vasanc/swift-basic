import Foundation

//func add(
//    _ lhs: Int,
//    _ rhs: Int
//)->Int{
//    lhs+rhs
//}
let abc:Int

let add: (Int, Int) -> Int
//= { (lhs: Int, rhs: Int) -> Int in
//    lhs+rhs
//}
//add(12,21)

add = {
    (lhs: Int, rhs: Int) -> Int in
        lhs+rhs
}

func add(
    _ lhs: Int,
    _ rhs: Int,
    u f: (Int, Int) -> Int
) -> Int{
    f(lhs, rhs)
}

//first way to call this
add(20, 30, u:{
    (lhs:Int, rhs:Int) -> Int in
        lhs+rhs
})


//second way to call this
add(20, 30){
    (lhs:Int, rhs:Int) -> Int in
        lhs+rhs
}

//it is slower
add(20,3){ $0+$1 }



//for every closure it is possible, but it is slow

let sub:(Int, Int) -> Int = {
    (lhs, rhs) in
        lhs-rhs
}


let arr = [30, 20, 19, 40]
arr.sorted(by: {(lhs: Int, rhs: Int) -> Bool in
    lhs>rhs
})
arr.sorted(by: <)

//Not clean code
func add2(
    c f: (Int, Int)-> Int,
    _ lhs: Int,
    _ rhs: Int
) -> Int{
    f(lhs, rhs)
}

add2(c: {(lhs: Int, rhs: Int)-> Int in
    lhs+rhs},
     20,
     30
)

func mul(_ val: Int) -> Int{
    val * 2
}

func doMult(_ val: Int, using _p: (Int) -> Int) -> Int{
    _p(val)
}

doMult(20, using: mul(_:))



var bc: Int{
    if(12<13){
        return 12
    }
}

var a : (Int, Int) -> Int = {
    (a: Int, b: Int) -> Int in
        a+b
}
