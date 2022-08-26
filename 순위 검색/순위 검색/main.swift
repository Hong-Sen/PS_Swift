//
//  main.swift
//  순위 검색
//
//  Created by 홍세은 on 2022/08/26.
//
import Foundation

func solution(_ info:[String], _ query:[String]) -> [Int] {
    var result = [Int]()
    var db = [String : [Int]]()
    
    for i in info {
        var arr = i.components(separatedBy: " ")
        var score = Int(arr[4])!
        
        for language in [arr[0], "-"] {
            for type in [arr[1], "-"] {
                for career in [arr[2], "-"] {
                    for food in [arr[3], "-"] {
                        let key = "\(language)\(type)\(career)\(food)"
                        if db[key] == nil {
                            db[key] = [score]
                        }
                        else {
                            db[key]?.append(score)
                        }
                    }
                }
            }
        }
    }
    
    // 효율성: 이진탐색을 위한 오름차순 정렬
    for i in db {
        let arrSorted = i.value.sorted()
        db[i.key] = arrSorted
    }
    
    for q in query {
        var arr = q.components(separatedBy: " ").filter{($0 != "and")}
        var score = Int(arr[4])!
        var key = "\(arr[0])\(arr[1])\(arr[2])\(arr[3])"
        var cnt = 0
        if let scores = db[key] {
            var low = 0
            var high = scores.count-1
            while low <= high {
                var mid = (low + high)/2
                if scores[mid] >= score {
                    high = mid - 1
                }
                else {
                    low = mid + 1
                }
            }
            cnt = scores.count - low
        }
        result.append(cnt)
    }
    
    return result
}
