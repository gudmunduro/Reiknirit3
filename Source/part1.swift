
func hanoi(_ n: Int, _ A: String, _ B: String, _ C: String)
{
    if n == 1{
        print("Færa disk \(n) frá \(A) til \(B)")
    } else {
        print("hanoi(\(n)-1, \"\(A)\", \"\(C), \"\(B)\"")
        hanoi(n-1, A, C, B)
        print("Færa disk \(n) frá \(A) til \(B)")
        print("hanoi(\(n-1), \"\(C)\", \"\(B), \"\(A)\"")
        hanoi(n-1, C, B, A)
    }
}

func runHanoi()
{
    guard let n: Int = input("Fjöldi diska") else {
        print("Tala er ekki gild")
        return
    }
    hanoi(n, "A", "B", "C")
}