import Foundation

// 대문자 -> 소문자, 숫자/특수문자/공백 -> 공백
func pre(_ str:String) -> String {
    var s = ""
    for i in 0..<str.count {
        var c = str[str.index(str.startIndex, offsetBy: i)].asciiValue!
        // 소문자
        if c >= 97 && c <= 122 {
            s.append(Character(UnicodeScalar(c)))
            continue
        }
        // 대문자 -> 소문자
        if c >= 65 && c <= 90 {
            s.append(Character(UnicodeScalar(c + 32)))
            continue
        }
        s.append(" ")
    }
    return s
}
func solution(_ str1:String, _ str2:String) -> Int {
    let s1 = pre(str1)
    let s2 = pre(str2)
    var arr1 = [String]()
    var arr2 = [String]()
    
    // 두개씩 끊어서 배열 할당
    for i in 0..<s1.count-1 {
        let start = s1.index(s1.startIndex, offsetBy: i)
        let end = s1.index(s1.startIndex, offsetBy: i+1)
        let sub = String(s1[start...end])
        if sub.contains(" ") {
            continue
        }
        arr1.append(sub)
    }
    for i in 0..<s2.count-1 {
        let start = s2.index(s2.startIndex, offsetBy: i)
        let end = s2.index(s2.startIndex, offsetBy: i+1)
        let sub = String(s2[start...end])
        if sub.contains(" ") {
            continue
        }
        arr2.append(sub)
    }
    
    let wholeCnt = arr1.count + arr2.count
    var sameCnt = 0
    
    // 합집합 구하기
    for i in 0..<arr1.count {
        for j in 0..<arr2.count {
            if arr1[i] == arr2[j] {
                arr2[j] = "0"
                sameCnt += 1
                break
            }
        }
    }
    var result = 1.0
    if wholeCnt != 0 {
        result = Double(sameCnt)/Double(wholeCnt-sameCnt)
    }
    return Int(result * 65536)
}

print(solution("E=M*C^2",    "e=m*c^2"))

