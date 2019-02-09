
func genAllStrings(_ n: Int)
{
    let alphabet = ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j",
                    "k", "l", "m", "n", "o", "p", "q", "r", "s", "t",
                    "u", "v", "w", "x", "y", "z", ]
    var allPossibleStrings: [String] = []
    var randomCharacterNumbers: [Int] = []
    var currentCharIndex = 0
    for i in 0...n - 1 {
        randomCharacterNumbers.append(0)
    }
    while !(currentCharIndex == n - 1 && randomCharacterNumbers.last == alphabet.count - 1)
    {
        var rndString = ""
        for i in 0..<randomCharacterNumbers.count {
            rndString.append(alphabet[randomCharacterNumbers[i]])
            randomCharacterNumbers[i]++
        }
        print(rndString)
        currentCharIndex++
    }
}

func runPart4()
{
    guard let charCount: Int = input("Fjöldi stafa") else {
        print("Tala er ekki gild")
        return
    }
    genAllStrings(charCount)
}