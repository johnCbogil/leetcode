
func peakIndexInMountainArray(_ A: [Int]) -> Int {
    
    for (index, element) in A.enumerated() {
        let nextElementExists = A.indices.contains(index+1)
        let previousElementExists = A.indices.contains(index-1)
        
        if (previousElementExists && A[index-1] < element) && (nextElementExists && A[index+1] < element) {
            return index
        }
    }
    return 0
}
peakIndexInMountainArray([3,4,5,1])
