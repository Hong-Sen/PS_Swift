import Foundation

let line = readLine()!
let arr = line.components(separatedBy: " ")
if Int(arr[0])! > Int(arr[1])!{
    print(">")
}
else if Int(arr[0])! < Int(arr[1])!{
    print("<")
}
else{
    print("==")
}

