let morseAlphabet = [".-","-...","-.-.","-..",".","..-.","--.","....","..",".---","-.-",".-..","--","-.","---",".--.","--.-",".-.","...","-","..-","...-",".--","-..-","-.--","--.."]
let englishAlphabet = ["A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W","X", "Y", "Z"]
let hash = Dictionary(uniqueKeysWithValues: zip(englishAlphabet, morseAlphabet))

var words = ["gin", "zen", "gig", "msg"]
words = words.map { $0.uppercased()}

var morseWords = [String]()

func uniqueMorseRepresentations(_ words: [String]) -> Int {

    // translate the words into morse
    for word in words {
        var morseWord = ""
        for letter in word {
            let letterAsString = String(letter)
            if let morseLetter = hash[letterAsString] {
                morseWord.append(morseLetter)
            }
        }
        morseWords.append(morseWord)
    }
    // count how many unique morse words there are
    let objectSet = Set(morseWords.map { $0 })
    return objectSet.count
}

print(uniqueMorseRepresentations(["a"]))

