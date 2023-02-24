import Foundation

extension Int{
    func plusTwo()->Int{
        self+2
    }
}


let a = 2
a.plusTwo()


struct Name{
    let firstName: String
    let lastName: String
}

extension Name{
    init(fullName: String){
        let components = fullName.components(separatedBy: " ")
        self.init(firstName: components.first ?? fullName, lastName: components.last ?? fullName)
    }
}

let me = Name(firstName: "abc", lastName: "ac")
let ne = Name(fullName: "foo bar")

ne.firstName
ne.lastName


protocol goesVroom{
    var goesVroom: String{get}
    func Vroom()->String
}

extension goesVroom{
    func Vroom()->String{
        "\(goesVroom) goes Vroom"
    }
}
struct car{
    let manfacturer: String
    let model: String
}

let tesla = car(manfacturer: "tesla", model: "X")

extension car: goesVroom{
    var goesVroom: String {
        "\(self.manfacturer) \(self.model)"
    }
}

tesla.Vroom()

class myDouble{
    let value: Double
    init(value: Double) {
        self.value = value
    }
}

extension myDouble{
    convenience init(){
        self.init(value: 0)
    }
}

let double = myDouble(value:20.0909)
double.value


extension goesVroom{
    func goesVroomVroom()-> String{
        "\(goesVroom) goesVroomVroom"
    }
}

tesla.goesVroomVroom()
