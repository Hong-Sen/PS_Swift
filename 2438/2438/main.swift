let line = Int(readLine()!)!
for i in 0..<line{
    var s:String=""
    for j in 0..<line{
        if j<=i {
            s += "*"
        }
    }
    print(s)
}
