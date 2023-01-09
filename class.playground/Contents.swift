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
