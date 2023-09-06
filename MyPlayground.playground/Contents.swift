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


//struct Toy {
//    var color: String
//    var isForGirls: Bool {
//        if color == "Pink" {
//            return true
//        } else {
//            return true
//        }
//    }
//}
//
//let color = Toy(color: "1")
//print(color.isForGirls)
//
//
//struct Car {
//
//    static let model = "PCX 160"
//    static let seats = "4"
//    static let gear = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
//
//    mutating func changeGear(gear: Int) -> Bool {
//        if (gear >= 1 && gear <= 10 ) {
//            return true
//        } else {
//            return false
//        }
//    }
//
//}
//
//print(Car.seats)
//
//print(Car.model)
//
//var car = Car();
//
//let change = car.changeGear(gear: 11)
//
//if change {
//    print("Changed gear successfully")
//} else {
//    print("You've picked the wrong gear")
//}
//
//
//class Statue {
//    var sculptor = "Unknown"
//}
//var venusDeMilo = Statue()
//venusDeMilo.sculptor = "Alexandros of Antioch"
//var david = venusDeMilo
//print(venusDeMilo.sculptor)
//print(david.sculptor)
//
//class Hospital {
//    var onCallStaff = [String]()
//}
//var londonCentral = Hospital()
//var londonWest = londonCentral
//londonCentral.onCallStaff.append("Dr Harlan")
//londonWest.onCallStaff.append("Dr Haskins")
//print(londonCentral.onCallStaff.count)
//print(londonWest.onCallStaff.count)
//
//
//class User {
//    let id: Int
//
//    init(id: Int) {
//        self.id = id
//        print("User \(id): I'm alive!")
//    }
//
//    deinit {
//        print("User \(id): I'm dead!")
//    }
//}
//
//var users = [User]()
//
//for i in 1...3 {
//    let user = User(id: i)
//    print("User \(user.id): I'm in control!")
//    users.append(user)
//}
//
//print("Loop is finished!")
//users.removeAll()
//print("Array is clear!")
//
//
//
//class Light {
//    var onState = false
//    func toggle() {
//        if onState {
//            onState = false
//        } else {
//            onState = true
//        }
//        print("Click")
//    }
//}
//let light = Light()
//light.toggle()
//light.toggle()
//
//
//class Phasers {
//    var energyLevel = 100
//    func firePhasers() {
//        if energyLevel > 10 {
//            print("Firing!")
//            energyLevel -= 10
//        }
//    }
//}
//var phasers = Phasers()
//phasers.firePhasers()
//phasers.energyLevel
//phasers.firePhasers()
//phasers.energyLevel
//
//
//struct Barbecue {
//    var charcoalBricks = 20
//    mutating func addBricks(_ number: Int) {
//        charcoalBricks += number
//    }
//}
//var barbecue = Barbecue()
//barbecue.addBricks(4)
//print(barbecue.charcoalBricks)




class User {
    var username = "print"

    func copy() -> User {
        let user = User()
        user.username = username
        return user
    }
}

var user1 = User()
var user2 = user1.copy()
user2.username = "test"

print(user1.username)
print(user2.username)



class Animal {
    
    let legs: Int
    init(legs: Int) {
        self.legs = legs
    }

}

class Dog: Animal {
    

    func speak () {
        print("I'm a dog with \(legs) legs and can do awrf")
    }
}

class Corgi: Dog {
    
    override func speak() {
        print ("I'm a Corgi with \(legs) legs and can do jump")
    }
    
}

class Poodle: Dog {
    
    override func speak() {
        print ("I'm a Poodle with \(legs) legs and can do poodles eyes")
    }
    
}

class Cat: Animal {
    
    let isTame: Bool
    init(isTame: Bool, legs: Int){
        self.isTame = isTame
        super.init(legs: legs)
    }
    
    func speak() {
        if (isTame) {
            print("I'm a house cat with \(legs) legs and can do meowing sounds")
        } else {
            print("I'll eat you alive")
        }
    }
}

class Persian: Cat {
    
    override func speak() {
        if (isTame) {
            print("I'm a persian breed cat with \(legs) legs and can do meowwy sounds")
        } else {
            print("I'll eat you alive")
        }
    }
    
}

class Lion: Cat {
    
    override func speak() {
        if (!isTame) {
            print("I'm the king of the jungle with \(legs) legs and will eat you alive")
        } else {
            print("something wen't wrong here Dr.")
        }
    }
}


var dogTrait = Dog(legs: 4)
var corgiTrait = Corgi(legs: 4)
var poodleTrait = Poodle(legs: 4)
var catTrait = Cat(isTame: true, legs: 4)
var persianTrait = Persian(isTame: true, legs: 4)
var lionTrait = Lion(isTame: false, legs: 4)


dogTrait.speak()
corgiTrait.speak()
poodleTrait.speak()
catTrait.speak()
persianTrait.speak()
lionTrait.speak()


protocol Vehicle {
    func estimateTime(for distance: Int) -> Int
    func travel(distance: Int)
}

struct Car: Vehicle {
    func estimateTime(for distance: Int) -> Int {
        distance / 50
    }
    
    func travel(distance: Int) {
        print("I'm driving \(distance)km")
    }
    
    func openSunroof() {
        print("It's a nice day!")
    }
}


func commute(distance: Int, using vehicle: Car) {
    if vehicle.estimateTime(for: distance) > 100 {
        print("That's too slow!")
    } else {
        vehicle.travel(distance: distance)
    }
}

let car = Car()
commute(distance: 100, using: car)
 

struct Book {
    let title: String
    let pageCount: Int
    let readingHours: Int
}

extension Book {
    init(title: String, pageCount: Int) {
          self.title = title
          self.pageCount = pageCount
          self.readingHours = pageCount / 50
      }
}

let lotr = Book(title: "Lord of the Rings", pageCount: 1178, readingHours: 50)

// Checkpoint #8 100 days switf ui
protocol Building {
    
    var rooms: Int { get set }
    var cost: Int { get set }
    var name: String { get set }
    
    func salesSummary()
}

struct House: Building {
    
    var rooms = 4
    var cost = 150
    var name = "Jonathan"
    
    func salesSummary() {
        print("This house has \(rooms) rooms in it, cost's \(cost) PHP")
        print("Sold by \(name)")
    }
}

struct Office: Building, Comparable {
    
    var rooms = 10
    var cost = 20000
    var name = "Mjholnir"
    var floorCount: Int
    
    func salesSummary() {
        print("This house has \(rooms) rooms in it, cost's \(cost) PHP")
        print("Sold by \(name)")
    }
    
    static func < (lhs: Office, rhs: Office) -> Bool {
        // This compares the left office's floor count
        // to the right offices's floor count
        // it returns TRUE if the left floor count is less than
        // the right floor count.
        lhs.floorCount < rhs.floorCount
    }
}

let house = House()
house.salesSummary()


let office = [Office(floorCount: 12), Office(floorCount: 5), Office(floorCount: 13)]
office.sorted().forEach{print("Floors: \($0.floorCount)")}

let leftOffice = Office(floorCount: 50)
let rightOffice = Office(floorCount: 100)
print(leftOffice == rightOffice)


extension String {
    func trimmed() -> String {
        self.trimmingCharacters(in: .whitespacesAndNewlines)
    }
    
    mutating func trim() {
        self = self.trimmed()
    }
}

let song: String? = "Shake it Off"
if let unwrappedSong = song {
    
    let noSpaces = unwrappedSong.filter{!$0.isWhitespace}
    
    print("The name has \(noSpaces.count) letters.")
}

let album = "Red"
let albums = ["Reputation", "Red", "1989"]
if let position = albums.firstIndex(of: album) {
    print("Found \(album) at position \(position).")
}


func double(number: Int?) -> Int? {
    guard let number = number else {
        return nil
    }
    return number * 2
}
let input = 5
if let doubled = double(number: input) {
    print("\(input) doubled is \(doubled).")
}


func playOpera(by composer: String?) -> String? {
    guard let composer = composer else {
        return "Please specify a composer."
    }
    if composer == "Mozart" {
        return "Le nozze di Figaro"
    } else {
        return nil
    }
}
if let opera = playOpera(by: " ") {
    print(opera)
}


func playScale(name: String?) {
    guard let name = name else {
        return
    }
    print("Playing the \(name) scale.")
}
playScale(name: "C")

func uppercase(string: String?) -> String? {
    guard let string = string else {
        return nil
    }
    return string.uppercased()
}
if let result = uppercase(string: nil) {
    print(result)
}


func username(for id: Int?) -> String {
    guard let id = id else {
        return "No input"
    }
    if id == 1989 {
        return "Taylor Swift"
    } else {
        return "Invalid"
    }
}

print(username(for: 1989))

let shoppingList = ["eggs", "tomatoes", "grapes"]
let firstItem = shoppingList.first?.appending(" are on my shopping list")


let captains: [String]? = ["Archer", "Lorca", "Sisko"]
let lengthOfBestCaptain = captains?.first?.count



// checkpoint #9 100 days swift UI
// My solution
func randomizer(randomArray: [Int]?) -> Int {if let randomArray = randomArray?.randomElement() {return Int(randomArray)} else {return (Int.random(in: 1...100))}}

let newRandom: Int = randomizer(randomArray: [1,2,3,4,60,99,1000,100000])

print(newRandom)

// Someone else's
func rando(_ arrays: [Int]?) -> Int { arrays?.randomElement() ?? Int.random(in: 1...100)}

print(rando([17, 32, 55, 99]))
print(rando([]))

var isSaved = false
isSaved.toggle()
isSaved.toggle()


let files = ["test.jpg", "coco.text", "cali.jpg"]

for file in files {
    if file.hasSuffix(".jpg") == false {
        continue
    }
    
    print("Found picture: \(file)")
}


struct Employee {
    let name: String
    var vacationAllocated = 14
    var vacationTaken = 0

    var vacationRemaining: Int {
        get {
            vacationAllocated - vacationTaken
        }

        set {
            vacationAllocated = vacationTaken + newValue
        }
    }
}

var employTest = Employee(name: "jonathan")
employTest.vacationTaken = 10
employTest.vacationRemaining
employTest.vacationAllocated


let opposites = [
    "Mario": "Wario",
    "Luigi": "Waluigi"
]

