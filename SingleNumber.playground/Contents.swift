func singleNumber(_ nums: [Int]) -> Int {
    var dict = [Int: Int]()
    
    for n in nums {
        if var val = dict[n] {
            if val > 0 {
                val += 1
                dict[n] = val
            }
        }
        else {
            dict[n] = 1
        }
    }
    
    print(dict)
    for (key,value) in dict {
        if value == 1 {
            return key
        }
    }
    return 0
}

print(singleNumber([4,1,2,1,2]))
