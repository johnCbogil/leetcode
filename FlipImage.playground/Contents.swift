// Input: [[1,1,0],[1,0,1],[0,0,0]]
// First reverse each row: [[0,1,1],[1,0,1],[0,0,0]].
// Then, invert the image: [[1,0,0],[0,1,0],[1,1,1]]


let image = [[1,1,0],[1,0,1],[0,0,0]]
var reversedImage = [[Int]]()
var inversedImage = [[Int]]()

// First reverse
for var array in image {
    array.reverse()
    reversedImage.append(array)
}
// Then invert
for array in reversedImage {
    var newArray = [Int]()
    for bit in array {
        if bit == 0 {
            newArray.append(1)
        }
        else {
            newArray.append(0)
        }
    }
    inversedImage.append(contentsOf: newArray)
}

