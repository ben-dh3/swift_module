//
//  FizzBuzz.swift
//  fizzbuzz
//
//  Created by Ben Duffield-Harding on 13/02/2024.
//

import Foundation

//class FizzBuzz {
//    let maxNum: Int
//    init(maxNum: Int) {
//        self.maxNum = maxNum
//    }
//    
//    func result() -> String {
//        var res: String = ""
//        for num in 1...maxNum {
//            if num % 3 == 0 && num % 5 == 0 {
//                res += "FizzBuzz, "
//            }else if num % 3 == 0 {
//                res += "Fizz, "
//            }else if num % 5 == 0 {
//                res += "Buzz, "
//            }else{
//                res += "\(String(num)), "
//            }
//        }
//        return String(res.dropLast(2))
//    }
//}

//    All years divisible by 400 ARE leap years (e.g. 2000 was a leap year)
//    All years divisible by 100 but not by 400 are NOT leap years (e.g. 1700, 1800 and 1900 were not leap years)
//    All years divisible by 4 and not by 100 ARE leap years (e.g. 2004, 2008 and 2012 were leap years)
//    All years not divisible by 4 are NOT leap years (e.g. 2009, 2010 and 2011 were not leap years)

func leapYear(year: Int) -> Bool {
    if year % 4 != 0 {
        return false
    }
    if year % 4 == 0 && year % 100 != 0 {
        return true
    }
    if year % 400 != 0 && year % 100 == 0 {
        return false
    }
    if year % 400 == 0 {
        return true
    }
    return false
}
