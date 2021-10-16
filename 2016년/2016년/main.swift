func solution(_ a:Int, _ b:Int) -> String {

var sum = b
let day = [0,31,29,31,30,31,30,31,31,30,31,30,31]
let week = ["THU", "FRI", "SAT","SUN","MON","TUE","WED"]


for i in 1..<a {
    sum += day[i]
}

return week[sum%7]
}
