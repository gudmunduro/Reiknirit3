
func genAllStrings(_ n: Int) -> [String]
{
    let alphabet = ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j",
                    "k", "l", "m", "n", "o", "p", "q", "r", "s", "t",
                    "u", "v", "w", "x", "y", "z", ]
    var allPossibleStrings: [String] = []
    var randomCharacterNumbers: [Int] = []
    var currentCharIndex = 0
    var index = 0
    for i in 0...n - 1 {
        randomCharacterNumbers.append(0)
    }
    while !(currentCharIndex == n - 1 && randomCharacterNumbers.last == alphabet.count - 1)
    {
        var rndString = ""
        for ci in randomCharacterNumbers {
            rndString.append(alphabet[ci])
        }
        allPossibleStrings.append(rndString)
        currentCharIndex++
        if currentCharIndex == randomCharacterNumbers.count {
            index++
            currentCharIndex = 0
        }
        randomCharacterNumbers[currentCharIndex]++
    }
    return allPossibleStrings
}

func runPart4()
{
    guard let charCount: Int = input("Fjöldi stafa") else {
        print("Tala er ekki gild")
        return
    }
    for s in genAllStrings(charCount) {
        print(s)
    }
}