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

func findOne(_ str: String) -> Int {
    var cnt: Int = 0
    for s in str {
        if s == "1" {
            cnt += 1
        }
    }
    return cnt
}

func solution(_ n:Int) -> Int
{
    var oneCnt : Int = findOne(toBinary(n))
    var answer = n + 1

    while true {
        if findOne(toBinary(answer)) == oneCnt {
            break
        }
        else {
            answer += 1
        }
    }
    
    return answer
}
