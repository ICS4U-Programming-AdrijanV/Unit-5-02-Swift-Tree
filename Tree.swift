/**
 * The main file.
 *
 * @author Adrijan Vranjkovic
 * @version 1.0
 * @since 2023-06-05
 */
final public class Main {
    private init() {
        fatalError("Utility class")
    }

    public static func main(_ args: [String]) {
        let backyardTree = Tree(initNumberOfLeaves: 50000, initFeetTall: 50, type: "Oak", age: 10)

        print("The initial number of leaves and feet tall, respectively.")
        print(backyardTree.getNumberOfLeaves())
        print(backyardTree.getFeetTall())

        backyardTree.grow()

        print("The tree grew!")
        print(backyardTree.getNumberOfLeaves())
        print(backyardTree.getFeetTall())

        backyardTree.loseAllLeaves()
        backyardTree.growSlow()

        print("The leaves fell off.")
        print(backyardTree.getNumberOfLeaves())

        print("The tree slowly grew.")
        print(backyardTree.getFeetTall())
    }
}

/**
 * Represents a tree.
 */
public class Tree {
    private var numberOfLeaves: Int
    private var feetTall: Int
    private var type: String
    private var age: Int

    public init(initNumberOfLeaves: Int, initFeetTall: Int, type: String, age: Int) {
        self.numberOfLeaves = initNumberOfLeaves
        self.feetTall = initFeetTall
        self.type = type
        self.age = age
    }

    public func grow() {
        self.feetTall += 5
        self.numberOfLeaves += 10000
    }

    public func loseAllLeaves() {
        self.numberOfLeaves = 0
    }

    public func growSlow() {
        self.feetTall += 1
    }

    public func getNumberOfLeaves() -> Int {
        return numberOfLeaves
    }

    public func getFeetTall() -> Int {
        return feetTall
    }

    public func getType() -> String {
        return type
    }

    public func getAge() -> Int {
        return age
    }
}
