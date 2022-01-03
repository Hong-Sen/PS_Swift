import Foundation

func solution(_ s:String) -> [Int] {
    var answer : [Int] = []
    var str = s
    str.removeFirst(2)
    str.removeLast(2)
    
    str.components(separatedBy: "},{")
        .map{$0.components(separatedBy: ",").map{Int($0)!}}
        .sorted{$0.count < $1.count}
        .forEach{
            $0.forEach {
                if !answer.contains($0) {
                    answer.append($0)
                }
            }
        }

    print(answer)
    return answer
}

solution("{{2},{2,1},{2,1,3},{2,1,3,4}}")
