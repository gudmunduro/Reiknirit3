
func genAllStrings(_ n: Int)
{
    /*let alphabet = ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j",
                    "k", "l", "m", "n", "o", "p", "q", "r", "s", "t",
                    "u", "v", "w", "x", "y", "z", ]
    var allPossibleStrings: String = []
    var numberOfPossibilities = alphabet.count * n
    for i in 0...numberOfPossibilities {
        var currentStr = ""
        for cc in 0...n {
            
        }
    }*/
}

func runPart4()
{
    guard let charCount: Int = input("Fjöldi stafa") else {
        print("Tala er ekki gild")
        return
    }
    genAllStrings(charCount)
}