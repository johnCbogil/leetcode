let digits = [1,2,3]

func plusOne(_ digits: [Int]) -> [Int] {
    // add 1 to the last digit
    var digits = digits
    if var last = digits.last {
       last += 1
        digits[digits.count-1] = last
    }
    
    for n in digits {
        digits.remove(at: n)
        var nString = String(n)
        digits.append(nString.flatMap{Int(String($0))})
    }
    return digits
 }

plusOne(digits)
