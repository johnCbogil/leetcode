import Foundation

func countSegments(_ s: String) -> Int {
    if s.count == 0 {
        return 0
    }
    let words = s.components(separatedBy: " ")
    return words.count
}

countSegments("           ")
