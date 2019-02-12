

func sortStrings(strings: [String]) -> [String]
{
    var newStrings = strings
    var noneSorted = true
    var startValue = 0
    var endValue = newStrings.count
    
    repeat {
        noneSorted = true
        startValue = (startValue == 0) ? 1 : 0
        endValue = (endValue == newStrings.count) ? newStrings.count - 1 : newStrings.count
        for i in stride(from: startValue, to: endValue, by: 2) {
            guard newStrings.count > i + 1 else {
                break
            }

            let i2 = i + 1
            stringFor: for c in 0..<newStrings[i].count {
                let str = newStrings[i]
                let str2 = newStrings[i2]

                if alphabet.index(of: str[c])! > alphabet.index(of: str2[c])! {
                    newStrings.swap(i, i2)
                    noneSorted = false
                    break stringFor
                }
            }
        }
    } while !noneSorted
    return newStrings
}

func runPart5()
{
    guard let inp: Int = input("Fjöldi stafa") else {
        print("Tala er ekki gild")
        return
    }
    var allStrings = genAllStrings(inp)
    allStrings.reverse()

    let allStringsSorted = sortStrings(strings: allStrings)

    allStringsSorted.printAll()
}