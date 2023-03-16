import Foundation

func mul2(_ value: Int? = nil) -> Int {
    if let value{
        return value*2
    }
    else{
        return 0
    }
}

mul2()


let age: Int? = 10
let age2:Int? = nil
if age == .some(10){
    "age is 10"
}
else{
    "age is none"
}

if age2 == .none{
    "age is none"
}
else{
    "age is some"
}


func check(_ a: Int?){
    guard a != nil else{
        "a is nil"
        return
    }
    "a is not nil"
}

check(age)
check(age2)


struct person{
    let name:String
    let address:Address?
    struct Address {
        let firstLine:String?
        let lastLine:String?
    }
}

let per = person(name:"Foor", address:nil)

if let addressFirstLine = per.address?.firstLine{
    addressFirstLine
}
else{
    "no address"
}
func fullname(first:String, last:String?)->String?{
    guard last != nil else{
        return nil
    }
    return "l"
}
