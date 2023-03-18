import Foundation

struct person{
    let first: String?
    let last: String?
    enum errrors: Error{
        case noFirst
        case noLast
        case noFull
    }
    func name()throws->String{
        switch (first, last){
        case (.none, .none):
            throw errrors.noFull
        case (.some, .none):
            throw errrors.noLast
        case (.none, .some):
            throw errrors.noFirst
        case let (.some(first), .some(last)):
            return "\(first) \(last)"
        }
    }
}

let p = person(first: nil, last: nil)
do{
    try p.name()
}catch is person.errrors{
    "oops"
}

let bar = person(first: nil, last: nil)

do{
    try bar.name()
}catch person.errrors.noLast{
    "No last"
}catch person.errrors.noFirst{
    "No First"
}catch person.errrors.noFull{
    "No full"
}


struct car{
    let name:String
    enum err:Error{
        case NullError
    }
    init(name:String) throws{
        if name.isEmpty{
            throw err.NullError
        }
        self.name = name
    }
}

do{
    let tes = try car(name:"")
}catch car.err.NullError{
    "null"
}

if let carr = try? car(name: ""){
    "success \(carr.name)"
}else{
    "failed"
}

//let myCarr = try! car(name: "") -- ERROR


struct dog{
    
    let isInjured:Bool
    let isSleeping:Bool
    
    enum Barkerr:Error{
        case CannotBark
    }
    
    enum err:Error{
        case CannotRun
    }
    
    func bark() throws{
        if isSleeping{
            throw Barkerr.CannotBark
        }
        "Bark.."
    }
    
    func run() throws{
        if isInjured{
            throw err.CannotRun
        }
        "Run.."
    }
    
    func barkAndRun() throws{
        try bark()
        try run()
    }
}

let d = dog(isInjured: true, isSleeping: true)
do{
    try d.barkAndRun()
}catch dog.err.CannotRun, dog.Barkerr.CannotBark{
    "handled"
}


func name(first:String?, last:String?,
          calc:(String?, String?) throws ->
          String?) rethrows -> String?{
    try calc(first, last)
}

enum Ename:Error{
    case first
    case last
}


func + (first:String?, last:String?) throws -> String?{
    guard let first,
          !first.isEmpty else{
        throw Ename.first
    }
    guard let last,
          !last.isEmpty else{
        throw Ename.last
    }
    return "\(first) \(last)"
}


do{
    try name(first: "aass", last: "", calc: +)
}catch{
    "\(error)"
}

do{
    try name(first: "", last: "aass", calc: +)
}catch{
    "\(error)"
}

do{
    try name(first: "aass", last: "aass", calc: +)
}catch{
    "\(error)"
}


enum numberErr: Error{
    case noPositive(value:Int)
}


func getPrevPos(num:Int) -> Result<Int, numberErr> {
    guard num>0 else{
        return Result.failure(
            numberErr.noPositive(value: num)
        )
    }
    return Result.success(num-1)
}

func get(num:Int){
    switch getPrevPos(num: num){
    case .success(num:let num): "\(num)";break;
    case let .failure(error):
        switch error{
        case let .noPositive(value):
                "\(value)"
        }
    }
}
get(num: 0)
get(num: 1)

