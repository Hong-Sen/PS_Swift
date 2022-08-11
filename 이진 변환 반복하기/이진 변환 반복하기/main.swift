import Foundation

func toBinary(_ n: Int) -> String {
    var r = n;
    var s = "";
    while r != 0 {
        s = String(r % 2) + s
        r /= 2
    }
    return s
}

func solution(_ s:String) -> [Int] {
    var changeCnt = 0
    var removedZero = 0
    var str = s
    
    var i = 0
    while str != "1" {
        removedZero += str.filter{($0 == "0")}.count
        str = str.components(separatedBy: "0").joined()
        changeCnt += 1
        str = toBinary(str.count)
    }
    return [changeCnt, removedZero]
}
