import Foundation

let first:String? = "va"
let last:String? = "san"

func +(lhs:String?, rhs:String?) -> String?{
    switch(lhs, rhs){
    case (.none, .none):
        return nil
    case let (.some(value), .none):
        return value
    case let (.none, .some(value)):
        return value
    case let (.some(lhs), .some(rhs)):
        return "\(lhs) \(rhs)"
    }
}

let full = first+last
prefix operator ^

prefix func ^(value:String?)->String?{
    value?.uppercased()
}

let lower = "vava"
let upper = ^lower


postfix operator *
postfix func *(value:String)->String{
    "*** \(value) ***"
}

let cased = lower*
