import Foundation

func solution(_ numbers:[Int], _ hand:String) -> String {
    var result = ""
    var left = 10
    var right = 11
    let matrix = [[3,1],[0,0],[0,1],[0,2],[1,0],[1,1],[1,2],[2,0],[2,1],[2,2],[3,0],[3,2]]
    for i in 0..<numbers.count {
        switch numbers[i] {
            case 1,4,7:
            result += "L"
            left = numbers[i]
            case 3,6,9:
            result += "R"
            right = numbers[i]
            case 2,5,8,0:
            let ld = abs(matrix[numbers[i]][0]-matrix[left][0]) + abs(matrix[numbers[i]][1]-matrix[left][1])
            let rd = abs(matrix[numbers[i]][0]-matrix[right][0]) + abs(matrix[numbers[i]][1]-matrix[right][1])
            if ld < rd {
                result += "L"
                left = numbers[i]
            }
            else if ld > rd {
                result += "R"
                right = numbers[i]
            }
            else{
                if hand == "right" {
                    result += "R"
                    right = numbers[i]
                }
                else {
                    result += "L"
                    left = numbers[i]
                }
            }
            default:
            result += ""
        }
    }
    return result
}

print(solution([1, 3, 4, 5, 8, 2, 1, 4, 5, 9, 5],"right"))
