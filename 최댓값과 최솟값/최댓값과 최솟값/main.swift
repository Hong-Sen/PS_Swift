import Foundation

func solution(_ s:String) -> String {
    var arr = s.components(separatedBy: " ").map{Int($0)!}
    arr.sort()
    let result = "\(arr[0]) \(arr[arr.count-1])"
    
    return result
}
