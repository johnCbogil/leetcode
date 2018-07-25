func selfDividingNumbers(_ left: Int, _ right: Int) -> [Int] {
    var output = [Int]()
    for number in left...right {
        let numString = String(number)
        let array = numString.compactMap{Int(String($0))}
        if array.contains(where: {$0 == 0 || number % $0 != 0}) {
            // do nothing
        }
        else {
            output.append(number)
        }
    }
    return output
}


print(selfDividingNumbers(1, 22))
