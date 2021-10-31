import Foundation

func solution(_ answers:[Int]) -> [Int] {
    var p1 = [1,2,3,4,5]
    var p2 = [2,1,2,3,2,4,2,5]
    var p3 = [3,3,1,1,2,2,4,4,5,5]
    var cnt = [0,0,0]
    var result = [Int]()
    var problemSize = answers.count
    for i in 0..<problemSize {
        if answers[i] == p1[i%5] {
            cnt[0]+=1
        }
        if answers[i] == p2[i%8] {
            cnt[1]+=1
        }
        if answers[i] == p3[i%10] {
            cnt[2]+=1
        }
        
    }
    var maxN = cnt[0]
    result.append(1)
    for i in 1...2 {
        if maxN < cnt[i] {
            result = [Int]()
            result.append(i+1)
            maxN = cnt[i]
        }
        else if maxN == cnt[i] {
            result.append(i+1)
        }
    }
    
    result.sorted(by:<)
    return result
}
print(solution([1,2,3,4,5,4,2,5,2,1,2]))
