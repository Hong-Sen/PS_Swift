import Foundation

func solution(_ A:[Int], _ B:[Int]) -> Int
{
    var ans = 0
    let a = A.sorted()
    let b = B.sorted()
    let len = a.count
    
    for i in 0..<len {
        ans += a[i] * b[b.count-i-1]
    }

    return ans
}
