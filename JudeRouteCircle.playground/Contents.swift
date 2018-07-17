import CoreGraphics

func judgeCircle(_ moves: String) -> Bool {
    if (moves.isEmpty) {return true}
    let startPosition = CGPoint(x: 0, y: 0)
    var currentPosition = CGPoint(x: 0, y: 0)

    let moveDict = ["R":CGPoint(x: 1, y: 0),
                    "L":CGPoint(x: -1, y: 0),
                    "U":CGPoint(x: 0, y: 1),
                    "D":CGPoint(x: 0, y: -1)
                    ]
    
    for char in moves {
        let moveString = String(char)
        if let newMove = moveDict[moveString] {
            currentPosition.x = currentPosition.x + newMove.x
            currentPosition.y = currentPosition.y + newMove.y
        }
    }
    
    if currentPosition == startPosition {
        return true
    }
    else {
        return false
    }
}

judgeCircle("UD")
judgeCircle("LL")



