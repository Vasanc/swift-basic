import UIKit

var greeting = "Hello, playground"
greeting = "Hello, playground"

protocol canBreathe{
    func Breathe()
}

struct Animal: canBreathe{
    func Breathe(){
        print("animal Breathing")
    }
}

struct Person: canBreathe{
    func Breathe(){
        print("Person Breathing")
    }
}

let Dog = Animal()
let Man = Person()

Dog.Breathe()
Man.Breathe()

protocol canJump{
    func Jump()
}

extension canJump{
    func Jump(){
        "Jumping.."
    }
}

struct cat: canJump{
//    func Jump() {
//        "Jumping..."
//    }
}

let caat = cat()

caat.Jump()


protocol hasName{
    var name: String{get}
    var age: Int{get set}
}


struct dog: hasName{
    let name: String
    var age: Int
}

extension hasName{
    func describeMe(){
        print("Name: \(name) \nAge: \(age)")
    }
    
    mutating func addAge(){
        self.age += 1
    }
}

var jimmy = dog(name: "Jimmy", age: 9)

jimmy.addAge()
jimmy.describeMe()

func describe(obj:Any){
    if obj is dog{
        "obj is dog"
    }
    else{
        "Obj is not a dog"
    }
}

describe(obj: jimmy)
