import Foundation

func toBinary(_ n: Int) -> String {
    var str: String = ""
    var num = n
    while num != 0 {
        str = String(num % 2) + str
        num /= 2
    }
    return str
}

func solution(_ n:Int) -> Int
{
    var answer = n + 1
    var binaryN = toBinary(n)
    var nCnt = binaryN.filter({$0 == "1"}).count
    while true {
        if toBinary(answer).filter({$0 == "1"}).count == nCnt {
            break
        }
        else {
            answer += 1
        }
    }
    
    return answer
}
