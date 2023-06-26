import Cocoa


//Creating a variable

var greeting = "Hello, playground"

var username = ""

//Simple if statement
if username.isEmpty {
    username = "da heck are you?"
}

print(username)

//Boolean
let firstName = "Paul"
let secondName = "Sophie"

print(firstName == secondName)
print(firstName != secondName)
print(firstName < secondName)
print(firstName >= secondName)


//for loop in a string of array
let platform = ["Linux", "MacOS", "Windows"]

for os in platform {
    print("print os samples \(os).")
}

//Nested for loop, looping through items 1 - 5 as outer loop, multiplying current value of i to j 1..5
for i in 1...5 {
    print("The \(i) times table")

    for j in 1...5 {
        print("    \(j) x \(i) is \(j * i)")
    }

    print()
}

//printing number that is a multiple of 2
var numbers = [1, 2, 3, 4, 5, 6]
for number in numbers {
    if number % 2 == 0 {
        print(number)
    }
}


//printing string 4 times appending hate word to the string body
print("Haters gonna ")
for _ in 1...4 {
    print("hate")
}

//Printing colors in a string of array while counter is less than 5
let colors = ["Red", "Green", "Blue", "Orange", "Yellow"]
var colorCounter = 0
while colorCounter < 5 {
    print("\(colors[colorCounter]) is a popular color.")
    colorCounter += 1
}


//var cats: Int = 0
//while cats < 10 {
//    cats += 1
//    print("I'm getting another cat.")
//    if cats == 4 {
//        print("Enough cats!")
//        cats = 10
//    }
//}



//var averageScore = 2.5
//while averageScore < 15.0 {
//    averageScore += 2.5
//    print("The average score is \(averageScore)")
//}

//var people = 2
//while people < 10 {
//    people += 2
//    if people == 10 {
//        print("We got 10 people.")
//    }
//}

//for i in 1...100 {
//    if i % 3 == 0 && i % 5 != 0 {
//        print("Fizz")
//    }
//    else if i % 5 == 0 && i % 3 != 0 {
//        print("Buzz")
//    }
//    else if i % 3 == 0 && i % 5 == 0 {
//        print("FizzBuzz")
//    }
//    else {
//        print(i)
//    }
//}

//let three = 3
//let five = 5
//
//for i in 1...100 {
//    if i.isMultiple(of: three) && i.isMultiple(of: five) {
//        print("FizzBuzz")
//    }
//    else if i.isMultiple(of: three) {
//        print("Fizz")
//    }
//    else if i.isMultiple(of: five) {
//        print("Buzz")
//    }
//    else {
//        print(i)
//    }
//}


//for i in 1...100 {
//    if i % 3 == 0 && i % 5 == 0 {
//        print("FizzBuzz")
//    }
//    else if i % 3 == 0 {
//        print("Fizz")
//    }
//    else if i % 5 == 0 {
//        print("Buzz")
//    }
//    else {
//        print(i)
//    }
//}

//func twoNames(string1: String, string2: String){
//
//    if string1.sorted() == string2.sorted() {
//        print(true)
//    }else{
//        print(false)
//    }
//}



//func areLettersIdentical(string1: String, string2: String) -> Bool {
//    return string1.sorted() == string2.sorted()
//}
//
//areLettersIdentical(string1: "paul", string2: "laup")


//func pythagoras(a: Double, b: Double) -> Double {
//    return sqrt(a * a + b * b)
//}
//
//let c = pythagoras(a: 3, b: 4)
//print(c)

//func makeBurger(withCheese: Bool) {
//    if withCheese {
//        print("Here's a cheeseburger")
//    } else {
//        print("Here's a regular burger")
//    }
//}
//
//makeBurger(withCheese: false)

//func sumItems(_ items: [Int]) -> Int {
//    var total = 0
//    for item in items {
//        total += item
//    }
//    return total
//}
//
//
//sumItems([1, 2, 3])


//func printLogMessage(message: String) -> Bool {
//    print("Log: \(message)")
//    return true
//}
//printLogMessage(message: "Something went wrong!")

//func isEveryoneCanadian(_ birthCountries: [String]) -> Bool {
//    for country in birthCountries {
//        if country != "Canada" {
//            return false
//        }
//    }
//    return true
//}
//
//isEveryoneCanadian(["canada", "canada"])

//func formatLength(test length: Int) {
//    print("That measures \(length)cm.")
//}
//formatLength(95)


//func printTimesTables(for number: Int, end: Int){
//    var counter = 0
//    for i in 1...end {
//        print("\(i) x \(number) is \(i * number)")
//        counter += i
//    }
//}
//
//
//printTimesTables(for: 1, end: 10)


//enum squareRoot: Error {
//    case outOfBounds, noRoot
//}
//
//
//func returnSquareRoot (_ number: Int) throws -> Int {
//
//    if number < 1 || number > 10_000 {
//        throw squareRoot.outOfBounds
//    }
//    for i in 1...100 {
//        if number == i * i {
//            return i
//        }
//    }
//    throw squareRoot.noRoot
//}
//
//
//do {
//    let result = try returnSquareRoot(55)
//    print("\(result)")
//} catch squareRoot.outOfBounds {
//    print("Out of bounds" )
//} catch squareRoot.noRoot {
//    print("no root found")
//}

//let rowBoat = { (distance: Int) in
//    for _ in 1...distance {
//        print("I'm rowing 1km.")
//    }
//}
//rowBoat(5)

//let team = ["Gloria", "Suzzane", "Piper", "Tiffany", "Tasha"]
//
//let reverseTeam = team.sorted {$0 > $1}
//
//print(reverseTeam)

//func holdClass(name: String, lesson: () -> Void) {
//    print("Welcome to \(name)!")
//    lesson()
//    print("Make sure your homework is done by next week.")
//}
//holdClass(name: "Philosophy 101") {
//    print("All we are is dust in the wind, dude.")
//}
//
//
//
//func phoneFriend(conversation: () -> Void) {
//    print("Calling 555-1234...")
//    conversation()
//}
//phoneFriend {
//    print("Hello!")
//    print("A foreign prince wants to give you $5 million.")
//    print("What are your bank details?")
//}

//func knitSweater(then: () -> Void) {
//    print("Buy wool")
//    for _ in 1...100 {
//        print("Knit knit knit...")
//    }
//    then()
//}
//knitSweater {
//    print("Who wants to buy a sweater?")
//}



//func getUserData(for id: Int) -> String {
//    if id == 1989 {
//        return "Taylor Swift"
//    } else {
//        return "Anonymous"
//    }
//}
//
//let data: (Int) -> String = getUserData
//let user = data(1989)
//print(user)
       

//func makeArray(size: Int, using generator: () -> Int) -> [Int] {
//    var numbers = [Int]()
//
//    for _ in 0..<size {
//        let newNumber = generator()
//        numbers.append(newNumber)
//    }
//
//    return numbers
//}
//
//let rolls = makeArray(size: 50) {
//    Int.random(in: 1...20)
//}
//
//
//print(rolls)

//let luckyNumbers = [7, 4, 38, 21, 16, 15, 12, 33, 31, 49]

//let isEven = luckyNumbers.filter {$0.isMultiple(of: 2)}
//let isOdd = luckyNumbers.filter {$0 % 2 != 0}
//let isAscending = isOdd.sorted {$0 < $1}
//let convertString = isAscending.map { (number: Int) -> String in
//    return String(number)
//}


//for convert in convertString {
//    print("\(convert) is a lucky number")
//}

//luckyNumbers.filter {
//    $0 % 2 != 0
//}.sorted {
//    $0 < $1
//}.forEach {
//    print("\($0) is a lucky number")
//}


//struct Race {
//    var distance: Int
//    var runners = 0
//    var description: String {
//        return "This is a \(distance)km race with \(runners) runners."
//    }
//}
//let londonMarathon = Race(distance: 42, runners: 40_000)
//print(londonMarathon.description)



//struct Keyboard {
//    var isMechanical = false
//    var noiseLevel: Int {
//        if isMechanical {
//            return 11
//        } else {
//            return 3
//        }
//    }
//}
//let majestouch = Keyboard(isMechanical: true)
//print(majestouch.noiseLevel)


struct Toy {
    var color: String
    var isForGirls: Bool {
        if color == "Pink" {
            return true
        } else {
            return true
        }
    }
}

let color = Toy(color: "1")
print(color.isForGirls)
