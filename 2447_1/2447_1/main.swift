import Foundation

let N = Int(readLine()!)!
var star = ""

func solve(x:Int, y: Int) {
    var r = x
    var c = y
    while r>0 {
        if(r % 3 == 1 && c % 3 == 1){
            star += " "
            return
        }
        r/=3
        c/=3
    }
    star += "*"
}

for i in 0...N-1 {
    for j in 0...N-1{
        solve(x: i, y: j)
    }
    star += "\n"
}
print(star)
