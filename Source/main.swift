import Foundation

let menu = Menu(title: "Reiknirit - Skilaverkefni 3", options: [
    (text: "Spurning 1", option: runHanoi),
    (text: "Spurning 4", option: runPart4),
    (text: "Spurning 5", option: runPart5),
    (text: "Quicksort", option: runQuickSort),
    (text: "Exit", option: {
        exit(0)
    })
])

while true {
    menu.show()
}