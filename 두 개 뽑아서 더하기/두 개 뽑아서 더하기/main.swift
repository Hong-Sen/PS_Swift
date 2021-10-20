import Foundation

func solution(_ numbers:[Int]) -> [Int] {
    var dic = [Int : Int]()
    for i in 0..<numbers.count-1 {
        for j in i+1..<numbers.count {
            dic.updateValue(1,forKey:numbers[i] + numbers[j])
        }
    }
    let arr = dic.keys.sorted(by:<)
    
    return arr
}
