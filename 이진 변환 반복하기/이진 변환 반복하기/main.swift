import Foundation

func solution(_ s:String) -> [Int] {
    var changeCnt = 0
    var removedZero = 0
    var str = s
    
    while str != "1" {
        removedZero += str.filter{($0 == "0")}.count
        str = str.components(separatedBy: "0").joined()
        changeCnt += 1
        str = String(str.count, radix:2)
    }
    return [changeCnt, removedZero]
}
