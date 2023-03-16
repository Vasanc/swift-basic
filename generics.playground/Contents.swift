import Foundation


func perform(
    _ op: (Int, Int) -> Int,
    on lhs:Int,
and rhs: Int) -> Int{
    op(lhs, rhs)
}

perform(/, on:10, and:2)


func performAnyDataType<N: Numeric>(
    _ op: (N, N) -> N,
    on lhs:N,
and rhs: N) -> N{
    op(lhs, rhs)
}

performAnyDataType(+, on: 10.232, and: 123.55)


func performAnyDataType2<N>(
    _ op: (N, N) -> N,
    on lhs: N,
    and rhs: N) -> N where N: Numeric{
    op(lhs, rhs)
}

performAnyDataType(+, on: 12, and: 12.000009)


protocol canJump{
    func jump()
}

protocol canRun{
    func run()
}

struct Person: canJump, canRun{
    func jump() {
        "jumping"
    }
    
    func run() {
        "Running"
    }
}

func jumpAndRun<T: canJump & canRun>(value:T){
    value.jump()
    value.run()
}

let person = Person()
jumpAndRun(value: person)

extension [String]{
    func longestString() -> String? {
        self.sorted{
            (lhs: String, rhs: String)-> Bool in
            lhs.count>rhs.count
        }.first
    }
}

["a","bb","ccc"].longestString()
