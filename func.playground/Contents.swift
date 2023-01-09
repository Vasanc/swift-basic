func mulTwo(val:Int){
    let val1 = val*2
}
mulTwo(val:22)


func mulThree(val:Int)->Int{
    val*3
}
mulThree(val: 9)


func mulFour(
    val1: Int,
    val2: Int
) -> Int{
    val1*val2
}
let val = mulFour(val1: 2, val2: 4)
print(val)


func mulFour2(
    _ val1: Int,
    _ val2: Int
) -> Int{
    val1*val2
}
mulFour2(1, 2)


func mulFive(
    _ val1: Int
) -> Int{
    func only(
        val:Int
    ) -> Int{
        val+3
    }
    return only(val: val1)
}
mulFive(12)


@discardableResult
func addName(
    val1: String = "va",
    val2: String = "san"
) -> String{
    "\(val1)\(val2)"
}
addName()
addName(val1: "su", val2: "nni")
addName(val1: "su")
addName(val2 :"sasa")
