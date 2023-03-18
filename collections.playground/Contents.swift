import Foundation

let a = [1,2,34]
a.first
a.last
a.map(-)

var aa = [1,2,3,4]
aa.append(3)
aa.insert(23, at: 0)
aa.insert(contentsOf: [1,2,3], at: 3)

for a in aa{
    a
}

for a in aa where a%2==0{
    a
}

aa.map{(value:Int)->Int in
    value*2
}


aa.first{(value:Int)->Bool in
    value<10
}
aa.compactMap{(value:Int)->String? in
              value%2==0
              ? String(value)
              :nil
}

let aaa:[Int?] = [1,2,3,4,nil]

let notNils = aaa.filter{(value:Int?)-> Bool in
    value != nil
}

let numbers = [1,2,3,"any"] as Any


let uniqueNumbers = Set([1,33,4,1,1])
uniqueNumbers.map(-)

let stuff:Set<AnyHashable> = [1,2,3,"''"]

let ap = stuff.compactMap{
    (value:AnyHashable) -> Int? in
        value as? Int
}

type(of: ap)


struct person: Hashable{
    let id:UUID
    let name:String
    let age:Int
}

let fooId = UUID()
let foo = person(id: fooId, name: "as", age: 22)
let ba = person(id: fooId, name: "ba", age: 223)

let set:Set<person> = [foo, ba]

let me = ["name":"Vasan", "age":20, "GF":1, "address":[
    "city":"Puducherry", "state":"pondi"]
] as [String : Any]
me["name"]
(me["address"] as! [String:String])["city"]

me.keys
me.values

for (key, values) in me{
    key
    values
}

