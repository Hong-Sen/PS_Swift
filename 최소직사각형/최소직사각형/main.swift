import Foundation

func solution(_ sizes:[[Int]]) -> Int {
    var col = 0
    var row = 0
    for i in 0..<sizes.count {
        col = max(col,max(sizes[i][0], sizes[i][1])) // 가로 = 가로세로중 큰 것
        row = max(row,min(sizes[i][0], sizes[i][1])) // 세로 = 가로세로중 작은 것
    }
    return col * row
}
