import Foundation

func solution(_ fees:[Int], _ records:[String]) -> [Int] {
    var result = [Int]()
    var inTime = [Int : Int]()
    var total = [Int : Int]()
    
    for str in records {
        var info = str.components(separatedBy: " ")
        var times = info[0].components(separatedBy: ":").map{Int($0)!}
        let carNumber = Int(info[1])!
        if info[2] == "IN" {
            inTime[carNumber] = times[0] * 60 + times[1]
        }
        else {
            // 시간 계산
            var time = times[0] * 60 + times[1] - inTime[carNumber]!
            
            // inTime에서 삭제
            inTime[carNumber] = nil
            
            // total time 추가하기
            if let tt = total[carNumber] {
                total[carNumber] = tt + time
            }
            else {
                total[carNumber] = time
            }
        }
    }
    
    // 23:59에 출차한 차 요금 계산
    for (key, value) in inTime {
        // 시간 계산
        var time = 23 * 60 + 59 - value
        // total time 추가하기
        if let tt = total[key] {
            total[key] = tt + time
        }
        else {
            total[key] = time
        }
    }
    
    for (k,v) in Array(total).sorted(by:{$0.0 < $1.0}) {
        var fee = fees[1]
        if v > fees[0] {
            if (v - fees[0]) % fees[2] == 0 {
                fee += ((v - fees[0]) / fees[2]) * fees[3]
            }
            else {
                fee += ((v - fees[0]) / fees[2] + 1) * fees[3]
            }
        }
        result.append(fee)
    }
    
    return result
}
