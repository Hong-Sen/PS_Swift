let T = Int(readLine()!)!
for _ in 0..<T {
    var a =  readLine()!.split(separator: " ").map{Int($0)!}
    var h: Int = a[0]
    var w :Int = a[1]
    var n: Int = a[2]
    var floor = 0
    var ho = 0
    if n%h==0 {
        floor = h
        ho = n/h
    }
    else {
        floor = n%h
        ho = (n/h) + 1
    }
    let s1 = String(floor)
    let s2 = String(ho)
    if  ho<10 {
        print(s1+"0"+s2)
    }
    else {
        print(s1+s2)
    }

}


