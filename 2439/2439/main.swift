let n = Int(readLine()!)!

for i in stride(from: n, to: 0, by: -1){
    var s:String=""
    for j in  1...n {
        if(j>=i)    {s += "*"}
        else    {s += " "}
    }
    print(s)
}
