func selfDividingNumbers(_ left: Int, _ right: Int) -> [Int] {
    var output = [Int]()
    for number in left...right {
        let numString = String(number)
        let array = numString.compactMap{Int(String($0))}

        if array.contains(where: {$0 != 0 && number % $0 != 0}) {
            // do nothing
        }
        else {
            output.append(number)
        }
    }
    return output
}


// SHOULD NOT BE GETTING 10 AND 20 IN MY RESULT, SO CLOSE
print(selfDividingNumbers(1, 22))
