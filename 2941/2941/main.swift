import Foundation
var str = readLine()!
let croatia = ["c=","c-","dz=","d-","lj","nj","s=","z="]
for word in croatia {
    if str.contains(word) {
        str = str.replacingOccurrences(of: word, with: "*")
    }
}
print(str.count)
