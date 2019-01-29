
// Functions

public func input(_ message: String = "") -> String?
{
    print(message, terminator: ": ")
    return readLine()
}

public func input(_ message: String = "") -> Int?
{
    print(message, terminator: ": ")
    let inp = readLine()
    return (inp != nil) ? Int(inp!) : nil
}


// Classes

public class Menu {
    let title: String
    public fileprivate(set) var options: [(text: String, option: () -> Void)]

    init(title: String, options: [(text: String, option: () -> Void)])
    {
        self.title = title
        self.options = options
    }

    convenience init(options: [(text: String, option: () -> Void)])
    {
        self.init(title: "", options: options)
    }

    func show()
    {
        print(title)
        for i in 0...options.count - 1 {
            print("\(i + 1)) \(options[i].text)")
        }
        while true {
            guard let selected: Int = input(), 1...options.count ~= selected else {
                print("Invalid selection")
                continue
            }

            print("--\(options[selected - 1].text)--")
            print("")
            do {
                options[selected-1].option()
            } catch {
                print("Failed to run option")
                print(error)
            }
            print("")
            break
        }
    }
}