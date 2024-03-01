import XCTest
//@testable import MyPet
@testable import MyFizzBuzz


final class YourProjectTests: XCTestCase {
    // This would be our test case
//    func testRegisteringFoodAddsToFoodOptions() {
//        // Arrange
//        let tastyFood = "salmon"
//        let pet = Pet()
//        
//        // Act
//        pet.registerFood(food: "salmon")
//        
//        let foodOptions = pet.getFoodOptions()
//        print(foodOptions)
//        // Value of type 'Pet' has no member 'getFoodOptions'
//        
//        // Assert
//        XCTAssertTrue(foodOptions.contains(tastyFood))
//    }
    
//    func testFizzBuzzFive() {
//        let fizzBuzz = FizzBuzz(maxNum: 5)
//        
//        let result = fizzBuzz.result()
//        XCTAssertTrue(result.contains("1, 2, Fizz, 4, Buzz"))
//    }
//    
//    func testFizzBuzzTwentyFive() {
//        let fizzBuzz = FizzBuzz(maxNum: 25)
//        
//        let result = fizzBuzz.result()
//        XCTAssertTrue(result.contains("1, 2, Fizz, 4, Buzz, Fizz, 7, 8, Fizz, Buzz, 11, Fizz, 13, 14, FizzBuzz, 16, 17, Fizz, 19, Buzz, Fizz, 22, 23, Fizz, Buzz"))
//    }
    
//    All years divisible by 400 ARE leap years (e.g. 2000 was a leap year)
//    All years divisible by 100 but not by 400 are NOT leap years (e.g. 1700, 1800 and 1900 were not leap years)
//    All years divisible by 4 and not by 100 ARE leap years (e.g. 2004, 2008 and 2012 were leap years)
//    All years not divisible by 4 are NOT leap years (e.g. 2009, 2010 and 2011 were not leap years)
    
    func test2000IsALeapYear() {
        
        let result = leapYear(year: 2000)
        XCTAssertTrue(result == true)
    }
    
    func test1800IsNotALeapYear() {
        let result = leapYear(year: 1800)
        XCTAssertTrue(result == false)
    }
    
    func test2012IsALeapYear() {
        let result = leapYear(year: 2012)
        XCTAssertTrue(result == true)
    }
    
    func test2011ISNotALeapYear() {
        let result = leapYear(year: 2011)
        XCTAssertTrue(result == false)
    }
    
}
