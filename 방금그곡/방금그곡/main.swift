import Foundation

func solution(_ m:String, _ musicinfos:[String]) -> String {
    var title = "(None)"
    var playTime = 0
    
    let m = m.replacingOccurrences(of: "C#", with: "c")
     .replacingOccurrences(of: "D#", with: "d")
     .replacingOccurrences(of: "F#", with: "f")
     .replacingOccurrences(of: "G#", with: "g")
     .replacingOccurrences(of: "A#", with: "a")
    
    for info in musicinfos {
        var arr = info.components(separatedBy: ",")
        var startTime = arr[0].components(separatedBy: ":").map{Int($0)!}
        var endTime = arr[1].components(separatedBy: ":").map{Int($0)!}
        var time = (endTime[0] - startTime[0]) * 60 + endTime[1] - startTime[1]
        var music = arr[3].replacingOccurrences(of: "C#", with: "c")
              .replacingOccurrences(of: "D#", with: "d")
              .replacingOccurrences(of: "F#", with: "f")
              .replacingOccurrences(of: "G#", with: "g")
              .replacingOccurrences(of: "A#", with: "a")
              .map{String($0)}
        
        var fullMusic = ""
        for i in 0...time {
            fullMusic += music[i % music.count]
        }
        
        if fullMusic.contains(m) {
            if playTime < time {
                 title = arr[2]
                 playTime = time
            }
        }
    }
    
    return title
}
