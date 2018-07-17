func fizzBuzz(_ x: Int) -> [String] {
    
    var array = [String]()
    
    for n in 0...100 {
        if n % 5 == 0 && n % 3 == 0 {
            array.append("FizzBuzz")
        }
        else if n % 5 == 0 {
            array.append("Buzz")
        }
        else if n % 3 == 0 {
            array.append("Fizz")
            
        }
        else {
            array.append(String(n))
        }
    }
    return array
}
