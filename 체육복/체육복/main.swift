import Foundation

func solution(_ n:Int, _ lost:[Int], _ reserve:[Int]) -> Int {
    var reserveArr = reserve.filter{!lost.contains($0)}.sorted(by:<)
    var lostArr = lost.filter{!reserve.contains($0)}.sorted(by:<)
    var result = n - lostArr.count
    print(lostArr)
    print(reserveArr)
    for i in 0..<lostArr.count {
        var flag = -1
        for j in 0..<reserveArr.count {
            if lostArr[i]-1 == reserveArr[j] || lostArr[i]+1 == reserveArr[j] {
                result += 1
                flag = j
                break
            }
        }
        if flag != -1 {
            reserveArr.remove(at: flag)
        }
    }
    return result
}

print(solution(3, [1,2], [2,3]))
