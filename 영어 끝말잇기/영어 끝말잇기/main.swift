import Foundation

func solution(_ n:Int, _ words:[String]) -> [Int] {
    var dic = [String : Int]()
    var tmp = words[0][words[0].index(before: words[0].endIndex)]
    dic.updateValue(1, forKey: words[0])

    for i in 1..<words.count {
        if dic[words[i]] == 1 || tmp != words[i][words[i].startIndex]{
            return [(i+1)%n == 0 ? n : (i+1)%n , i/n+1]
        }
        tmp = words[i][words[i].index(before: words[i].endIndex)]
        dic.updateValue(1, forKey: words[i])
    }
    return [0,0]
}

print(solution(5, ["hello", "observe", "effect", "take", "either", "recognize", "encourage", "rest", "establish", "hang", "gather", "refer", "reference", "stimate", "executive"]))
