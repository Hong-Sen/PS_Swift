import Foundation

func solution(_ n:Int, _ a:Int, _ b:Int) -> Int
{
    var answer = 0
    var n1 = a
    var n2 = b
    
    while n1 != n2 {
        answer += 1
        n1 = n1 % 2 == 0 ? n1/2 : n1/2+1
        n2 = n2 % 2 == 0 ? n2/2 : n2/2+1
    }
   return answer
}

print(solution(8, 4, 3))
