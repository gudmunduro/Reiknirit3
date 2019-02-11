import Foundation

let alphabet = ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j",
                    "k", "l", "m", "n", "o", "p", "q", "r", "s", "t",
                    "u", "v", "w", "x", "y", "z", ]

func genAllStrings(_ n: Int) -> [String]
{
    if n == 1 {
        return alphabet
    }

    let currentStrings = genAllStrings(n - 1)
    var newStrings: [String] = [] 

    for str in currentStrings {
        for c in alphabet {
            guard !str.contains(c) else {
                continue
            }

            newStrings.append(str + c)
        }
    }
    
    return newStrings
}

func runPart4()
{
    guard let charCount: Int = input("Fjöldi stafa") else {
        print("Tala er ekki gild")
        return
    }

    let start = DispatchTime.now() // Tímamæling byrjar
    let allStrings = genAllStrings(charCount)
    let end = DispatchTime.now()   // Tímamæling byrjar

    let funcTime = Double(end.uptimeNanoseconds - start.uptimeNanoseconds) / 1_000_000_000

    print("Fallið tók \(funcTime) að fyrir fjöldann \(charCount)")

    if allStrings.count > 100 {

        if ask("Strengirnir eru fleyri en 100 (\(allStrings.count)).  Villtu samt láta prenta þá") {
            allStrings.printAll()
        }

    } else {
        allStrings.printAll()
    }
    print("Fjöldi: \(allStrings.count)")
}