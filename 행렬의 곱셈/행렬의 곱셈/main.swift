import Foundation

func solution(_ arr1:[[Int]], _ arr2:[[Int]]) -> [[Int]] {
    var result = [[Int]]()
    for i in 0..<arr1.count {
        var arr = [Int]()
        for j in 0..<arr2[0].count {
            var sum = 0
            for k in 0..<arr1[i].count {
                sum += arr1[i][k] * arr2[k][j]
            }
            arr.append(sum)
        }
        result.append(arr)
    }
    
    return result
}

print(solution([[2, 3, 2], [4, 2, 4], [3, 1, 4]],[[5, 4, 3], [2, 4, 1], [3, 1, 1]]))
