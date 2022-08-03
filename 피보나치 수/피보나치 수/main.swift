func solution(_ n:Int) -> Int {
    var result: Int = 1
    var n1: Int = 1
    var n2: Int = 0
    for i in 2...n {
        result = (n1 + n2) % 1234567
        n2 = n1
        n1 = result
    }
    return result
}
