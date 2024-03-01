import UIKit

//let greeting = "Hello, Swift World!"
//
//let introduction = "My name is Ben"
//
//print(greeting, introduction)

//50 - 23
//
//365 * 1440
//
//32452 % 13
//1000000000

// if/else statements

//let randomInt = Int.random(in: 1..<6)
//
//if randomInt == 1 {
//    print("One")
//}else if randomInt == 2 {
//    print("Two")
//}else{
//    print("More")
//}

// Print "Please go to the second floor" if `role` is "doctor"
// Print "Please go to the first floor" if `role` is "nurse"
// Print "Please go to the waiting room" if `role` is "patient"
// Print "Please go to reception" if `role` is none of the above

// switch statement

//let roles = ["doctor", "nurse", "patient", "driver", "plumber"]
//var role = roles.randomElement()
//
//switch role {
//case "doctor":
//    print("Please go to the second floor")
//    
//case "nurse":
//    print("Please go to the first floor")
//    
//case "patient":
//    print("Please go to the waiting room")
//    
//default:
//    print("Please go to reception")
//}

// challenge

//let randomInt = Int.random(in: 1..<101)
//
//if randomInt % 3 == 0 && randomInt % 5 == 0 {
//    print("FizzBuzz")
//}else if randomInt % 3 == 0 {
//    print("Fizz")
//}else if randomInt % 5 == 0 {
//    print("Buzz")
//}else{
//    print(randomInt)
//}

// for loops

//let number = 34325
//var sum = 0
//for i in 2321...number {
//    if i % 2 == 0 {
//        sum += i
//    }
//}
//print(sum)

// factorial challenge

//var factorial = 17
//
//for i in stride(from:16,through:1,by:-1) {
//    print(i)
//    factorial *= i
//}
//print(factorial)

// data structures

//var myList = ["Cat", "Mouse", "Frog"]
//
//myList.append("Lynx")
//
//print(myList)

//let myAnimals = ["Cat", "cat", "frog", "cat", "dog", "Dog"]
//var counters = [String: Int]()
//
//for count in 1..<myAnimals.count {
//    counters[myAnimals[count]] = count
//}
//print(counters["cat"])
//print(counters)
// Should print (in any order)
// [ "cat": 3, "dog": 2, "frog": 1 ]

// challenge

//var myCountries = ["England", "Egypt", "Russia", "Spain", "Eroldyte"]
//var counters = [String: Int]()
//
//for country in myCountries {
//    if let firstChar = country.first{
//        if let count = counters[String(firstChar)]{
//            counters[String(firstChar)] = count + 1
//        }else{
//            counters[String(firstChar)]=1
//        }
//    }
//}
//
//print(counters)

// Program should print a dictionary with each of the letters of the alphabet
// and the number of countries which begin with that letter.
// E.g. [ "a": 2, "b": 0, ... ]

// functions

//func addFive(number: Int) -> Int {
//    return number + 5
//}
//
//print(addFive(number: 4))
//// Should print: "9"
//
//print(addFive(number: 2132))
//// Should print: "2137"
//
//func subtractLowFromHigh(a: Int, b: Int) -> Int {
//    return abs(a-b)
//}
//
//print(subtractLowFromHigh(a:2, b:3))
//// Should print "1"
//
//print(subtractLowFromHigh(a:3, b:2))
//// Should print "1"
//
//print(addFive(number: subtractLowFromHigh(a:1463, b:16475)))
//// Should print "15017"

// challenge

func superify(string: String) -> String {
    return "super\(string)"
}
print(superify(string: "cat"))
print(superify(string: superify(string: superify(string: superify(string: "cat")))))

// classes

//class Introducer {
//    let name: String
//    
//    init(name: String) {
//        self.name = name
//    }
//    
//    func announce() -> String {
//        return "I am \(self.name)"
//    }
//    
//    func introduce(who: String) -> String {
//        return "Hello \(who) I am \(self.name)"
//    }
//}
//
//var introducer = Introducer(name: "Josué")
//
//print(introducer.announce())
//// Should print: "I am Josué!"
//
//print(introducer.introduce(who: "Fred"))
//// Should print: "Hello Fred, I am Josué!"

// challenge

//class Reminder {
//    let name: String
//    var reminders: String
//    
//    init(name: String){
//        self.name = name
//        self.reminders = ""
//    }
//    
//    func remindMeTo(something: String) {
//        self.reminders = something
//    }
//    
//    func remind() -> String {
//        return "\(self.name)! \(reminders)!"
//    }
//}
//
//var reminder = Reminder(name: "Josué")
//
//reminder.remindMeTo(something: "Walk the dog")
//
//print(reminder.remind())
//// Should print: "Josué! Walk the dog!"

// type annotation

let myPets: Array = ["Black", "Erik", "Minerva"]
var myPetsHobbies: Dictionary = [
  "Black": "Run",
  "Erik": "Play",
  "Minerva": "Listen to music"
]

let numberOfMuseumsLeftToVisit: Int = 0
var moneyLeftAtTheEndOfCurrentMonth: Double = 0

// challenge

class Pet {
    
    let name: String
    let owner: String
    let likes: [String]
    let dislikes: [String]
    let neutral: [String]
    
    init(name: String, owner: String, likes: [String], dislikes: [String], neutral: [String]) {
        self.name = name
        self.owner = owner
        self.likes = likes
        self.dislikes = dislikes
        self.neutral = neutral
    }
    
    func getInformation(kind: String) -> String {
        if kind == "Likes"{
            return "\(self.name) likes \(self.likes[0]), \(self.likes[1]) and \(self.likes[2])!"
        }else if kind == "Dislikes"{
            return "\(self.name) dislikes \(self.dislikes[0]) and \(self.dislikes[1])!"
        }else{
            return "\(self.name) does not like or dislike playing with \(self.neutral[0])!"
        }
    }
}

let black = Pet(
  name: "Black",
  owner: "Josué",
  likes: ["running", "chasing", "singing"],
  dislikes: ["octopus", "cats"],
  neutral: ["squirrels"]
)

black.getInformation(kind: "Likes")
// Returns: Black likes running, chasing and singing!
black.getInformation(kind: "Dislikes")
// Returns: Black dislikes octopus and cats!
black.getInformation(kind: "Neutral")
// Returns: Black does not like or dislike playing with squirrels

// optionals

//var petNickname: String? = "james"
//
//func greetPet(_ nickname: String?) {
//    if let actualValue = nickname {
//        print("The optional has a value...so hello \(actualValue)")
//    }else{
//        print("The optional is nil")
//    }
//}
//
//greetPet(petNickname)
//greetPet(nil)

// challenge

//func printFavouriteBookDetails(title: String, description: String?, reason: String?) {
//    print("Title: \(title)")
//    if let isDescription = description {
//        print("Description: \(isDescription)")
//    }
//    if let isReason = reason {
//        print("Reason: \(isReason)")
//    }
//}
//
//printFavouriteBookDetails(title: "Harry Potter", description: nil, reason: nil)
//printFavouriteBookDetails(title: "Harry Potter", description: "little known story about a magical boy", reason: nil)
//printFavouriteBookDetails(title: "Harry Potter", description: "little known story about a magical boy", reason: "I am a wizard")
