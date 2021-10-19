import Foundation

var flag = true
var dx : [Int] = [-1,1,0,0]
var dy : [Int] = [0,0,-1,1]
var visited = Array(repeating: Array(repeating: 0, count: 5), count: 5)

func isInside(_ x:Int, _ y:Int) -> Bool {
    if x>=0 && x<5 && y>=0 && y<5 {
        return true
    }
    return false
}

func bfs(_ arr:[String], _ x:Int,_ y:Int,  _ cnt:Int){
    if cnt == 2 {
        return
    }
    visited[y][x] = 1
    for i in 0..<4 {
        var nx = x + dx[i]
        var ny = y + dy[i]
        if !isInside(nx, ny) || visited[ny][nx] == 1 {
            continue
        }
        if arr[ny][arr[ny].index(arr[ny].startIndex, offsetBy: nx)] == "X" {
            continue
        }
        if arr[ny][arr[ny].index(arr[ny].startIndex, offsetBy: nx)] == "P" {
            flag = false
            return
        }
        bfs(arr, nx, ny, cnt+1)
    }
}

func solution(_ places:[[String]]) -> [Int] {
    var result = [Int]()
    
    for i in 0..<places.count {
        var check = true
        
        for j in 0..<5 {
            if !check {
                continue
            }
            visited =  Array(repeating: Array(repeating: 0, count: 5), count: 5)
            for k in 0..<5 {
                var c = places[i][j][places[i][j].index(places[i][j].startIndex, offsetBy: k)]
                if c == "P" {
                    flag = true
                    bfs(places[i], k, j, 0)
                    if !flag {
                        check = false
                        break
                    }
                }
                
            }
        }
        if check {
            result.append(1)
        }
        else {
            result.append(0)
        }
    }
    return result
}

print(solution([["POOPX", "OXPXP", "PXXXO", "OXXXO", "OOOPP"],["POOOP", "OXXOX", "OPXPX", "OOXOX", "POXXP"], ["PXOPX", "OXOXP", "OXPOX", "OXXOP", "PXPOX"], ["OOOXX", "XOOOX", "OOOXX", "OXOOX", "OOOOO"], ["PXPXP", "XPXPX", "PXPXP", "XPXPX", "PXPXP"]]))
