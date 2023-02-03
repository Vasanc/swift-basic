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


class Tesla{
    let manufacture = "Tesla"
    let model: String
    let year: Int
    
    init(){
        self.model = "X"
        self.year = 2023
    }
    
    init(model:String, year:Int){
        self.model = model
        self.year = year
    }
    
//    init(model:String) {
//        self.model = model
//        self.year = 2023
//    }
    convenience init(model:String){
        self.init(model: model, year: 2023)
    }
    convenience init(year:Int){
        self.init(model: "X", year: year)
    }
}

class TeslaModelY: Tesla{
    override init(model:String, year:Int){
        super.init(model: model, year: year)
    }
    
     init(model: String) {
        super.init(model: model, year: 2929)
    }
}

let a = TeslaModelY(model: "X")

class aa{
    
    init() {
        "Initialized"
    }
    func some(){
        "som3thing"
    }
    
    deinit {
        "deinitialized"
    }
}

let clo = {
    let ssa = aa()
    ssa.some()
}

clo()



