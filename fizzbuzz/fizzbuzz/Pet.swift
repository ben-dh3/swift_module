//
//  Pet.swift
//  fizzbuzz
//
//  Created by Ben Duffield-Harding on 13/02/2024.
//

import Foundation

class Pet {
    var foodOptions = [String]()

    func registerFood(food: String) {
        foodOptions.append(food)
    }

    func getFoodOptions() -> [String] {
        return foodOptions
    }
}
