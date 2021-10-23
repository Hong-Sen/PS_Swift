import Foundation

func solution(_ name:String) -> Int {
    var cnt = 0
    let nameArr = name.map({$0}) // string to character array
    // 커서 상관없이 알파벳이 바뀌는 횟수 구하기
    for i in 0..<name.count {
        if nameArr[i] != "A" {
            let n1 = nameArr[i].asciiValue! - 65
            let n2 = 91 - nameArr[i].asciiValue!
            cnt += min(Int(n1), Int(n2))
        }
    }
    // 커서 횟수 구하기
    var move = name.count-1
    for i in 0..<name.count {
        if nameArr[i] != "A" {
            var next = i+1
            while next<name.count && nameArr[next] == "A" {
                next += 1
            }
            let tmp = 2*i + name.count - next
            print("\(tmp) \(move)")
            move = min(tmp, move)
        }
    }
    print("\(cnt) \(move)")
    return cnt+move
}

print(solution("ABAA"))
