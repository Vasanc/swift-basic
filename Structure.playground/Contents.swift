struct Person{
    let Name: String
    let Age: Int
    init(_ name:String){
        self.Name = name
        self.Age = 10
    }
    let number = 1
}

let p = Person("sasa")

p.Age
p.Name
p.number
p.self


struct Person2{
    let firstName: String
    let lastName: String
    var fullName: String{
         "\(firstName) \(lastName)"
    }
}

let ap = Person2(firstName: "a", lastName: "b")

struct car{
    var speed: Int
    mutating func change(_ speed: Int){
        "driving"
        self.speed = speed
    }
}

var car1 = car(speed: 10)
car1.change(100)

struct c{
    let l1:String
    let l2:Int
    func copy(_ l:Int) -> c{
        c(l1: self.l1, l2: l)
    }
}

let cc = c(l1: "V", l2: 123)
let bb = cc.copy(12)

cc.l2
bb.l2
