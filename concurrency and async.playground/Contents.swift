import Foundation
import PlaygroundSupport
import _Concurrency

PlaygroundPage
    .current
    .needsIndefiniteExecution = true

func fullname(first: String, last:String) async -> String{
    try? await Task.sleep(for: .seconds(1))
    return "\(first) \(last)"
}

Task{
    let result = await fullname(first: "Foo", last: "Baer")
    
    async let result2 = fullname(first: "Foo", last: "Baar")
                        await result2
}

enum clothe{
    case socks, shirt, trousers
}

func buySocks() async throws -> clothe{
    try await Task.sleep(for: .seconds(1))
    return .socks
}

func buyShirt() async throws -> clothe{
    try await Task.sleep(for: .seconds(1))
    return .shirt
}


struct ensemble: CustomDebugStringConvertible{
    let clothes:[clothe]
    let totalPrice:Double
    var debugDescription: String{
        "Clothes = \(clothes), price = \(totalPrice)"
    }
}

func wholeEnsemble() async throws -> ensemble{
    async let socks = buySocks()
    async let shirt = buyShirt()
    
    let ensemble = ensemble(clothes: await[try socks, try shirt], totalPrice:100)
    return ensemble
}


Task{
    if let ensemble = try? await wholeEnsemble(){
        print(ensemble)
    }
}
