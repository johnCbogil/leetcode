import Foundation

let J = "aA"
let S = "aAAbbbb"

func numJewelsInStones(_ J: String, _ S: String) -> Int {
    
//    var totalArray = [String]()
//
//    for letter in J {
//        print("LETTER: \(letter)")
//
//        let jayArray =  S.components(separatedBy:String(letter))
//        print("JAYARRAY: \(jayArray)")
//        totalArray.append(contentsOf:jayArray )
//
//    }
//
//    print(S.count - totalArray.count)
//    return S.count - totalArray.count
    
    var stoneCount = 0
    
    for letter in J {
        for letter2 in S {
            if letter == letter2 {
                stoneCount += 1
            }
        }
    }
    return stoneCount
    
}

numJewelsInStones(J, S)
