import Foundation
enum Animals{
    case a, b, c, d
}

let a = Animals.a
print(a)


if(Animals.a==a){
    "It is a"
}

else if(Animals.b==a){
    "It is b"
}

switch a{
    
case .a:
    "a"
    break
case .b:
    "b"
    break
case .c:
    "c"
    break
case .d:
    "d"
    break
}

enum Shortcut{
    case fileOrFolder(path: URL, name: String), wwwUrl(path: URL), song
}

let wwwApple = Shortcut.wwwUrl(
        path: URL(string:"https://www.apple.com")!
    )



switch wwwApple{
    
case .fileOrFolder(
    path: let path,
    name: let name):
    path
    name
    break
    
case .wwwUrl(
    path: let path):
    path
    break
    
case .song:
    break
}

switch wwwApple{
case let .fileOrFolder(path,name):
    path
    name
    break
    
case let .wwwUrl(path):
    path
    break
    
case .song:
    break
}

if case let .wwwUrl(path) = wwwApple {
    path
}
let C = Shortcut.fileOrFolder(path: URL(string:"C:")! , name: "CxC")

if case let .fileOrFolder(_, name) = C{
    name
}

enum Vehicle{
    case car(manufacture:String), bike(manufacture:String)
    func getManu() ->String{
        switch self{
        case let .car(manufacture):
            return "\(manufacture)"
        case let .bike(manufacture):
            return "\(manufacture)"
        }
    }
    var manu: String{
        switch self{
        case let .car(manufacture):
            return "\(manufacture)"
        case let .bike(manufacture):
            return "\(manufacture)"
        }
    }
    var manuO: String{
        switch self{
        case let .car(manufacture), let .bike(manufacture):
            return "\(manufacture)"
        }
    }
}

let bb = Vehicle.car(manufacture:"BMW")
let cc = Vehicle.bike(manufacture: "HD")

func getManu(_ abc:Vehicle) ->String{
    switch abc{
    case let .car(manufacture):
        return "\(manufacture)"
    case let .bike(manufacture):
        return "\(manufacture)"
    }
}



getManu(bb)
getManu(cc)

bb.getManu()
cc.getManu()

bb.manu
cc.manu

bb.manuO
cc.manuO

enum Family: String, CaseIterable{
    case father = "dad"
    case mother = "mum"
    case brother = "bro"
}

Family.father.rawValue
Family.allCases
Family.allCases.map(\.rawValue)


if let mom = Family(rawValue: "mum"){
    "Found"
    mom
}else{
    "not found"
}


enum weight{
    case small, medium, large
    
    mutating func change(){
        self = weight.large
    }
}

var dd = weight.medium
dd
dd.change()


