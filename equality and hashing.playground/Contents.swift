import Foundation

struct Person: Equatable{
    let id:Int
    let name:String
}
let p = Person(id: 1, name: "abc")
let q = Person(id: 1, name: "abc")
let r = Person(id: 1, name: "cdf")

if(p==q){
    "hehehe"
}
if(p==r){
    "hohohoho"
}

extension Person{
    static func ==(lhs:Self, rhs:Self)->Bool{
        if lhs.id==rhs.id{
            return true
        }
        return false
    }
}

enum pets: Equatable{
    case dog(Breed:String)
    case cat(Breed:String)
}

let c = pets.cat(Breed: "orange")
let d = pets.cat(Breed: "orange")

if c==d{
    "cc"
}

extension pets{
    static func == (lhs:Self, rhs:Self)->Bool{
        switch (lhs,rhs){
        case let (.dog(Breed:lhs), .dog(Breed:rhs)):
            if(lhs==rhs){
                return true
            }
            return false
        case let (.cat(Breed:lhs), .cat(Breed:rhs)):
            if(lhs==rhs){
                return true
            }
            return false
        case (.dog(_), .cat(_)):
            return false
        case (.cat(_), .dog(_)):
            return false
        }
    }
}

struct animal{
    let name:String
    let type:pets
    
    static func == (lhs:Self, rhs:Self)->Bool{
        lhs.type==rhs.type
    }
}

let a = animal(name: "hehe", type: .dog(Breed: "bow"))
let b = animal(name: "hoho", type: .dog(Breed: "bow"))

a==b





struct home:Hashable{
    let rooms:Int
    let area:String
    let romies:Int
}

let aasa = home(rooms: 2, area: "trk", romies: 12)
aasa.hashValue

let sasa = home(rooms: 2, area: "tk", romies: 13)
sasa.hashValue

struct homie:Hashable{
    let rooms:Int
    let area:String
    
    func hash(into hasher: inout Hasher) {
        hasher.combine(rooms)
    }
}


let aasa1 = homie(rooms: 2, area: "trk")
aasa1.hashValue

let sasa1 = homie(rooms: 2, area: "tk")
sasa1.hashValue
