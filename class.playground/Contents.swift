class Person{
    var name: String
    var age: Int
    
    init(name: String, age: Int){
        self.name = name
        self.age = age
    }
    
    func increaseAge(){
        self.age+=1
    }
}

let p = Person(name: "AA", age: 20)
p.name
p.age
p.increaseAge()
p.age
let q = p
q.increaseAge()
q.age
p.age

if p === q{
    "p q point to same memory"
}else{
    "p q dont point to same memory"
}

class Per{
    private(set) var age: Int
    
    init(age:Int) {
        self.age = age
    }
    
    func changeAge() {
        self.age += 10
    }
}

let pp = Per(age: 20)

pp.age
pp.changeAge()
pp.age

class vehicle{
    func vrom() {
        "Vroom Vroom"
    }
}

class car: vehicle{
    
}

let cr = car()
cr.vrom()
