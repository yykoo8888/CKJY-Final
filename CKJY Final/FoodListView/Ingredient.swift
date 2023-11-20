//
//  Ingredients.swift
//  CKJY Final
//
//  Created by Celine Quek on 20/11/23.
//

import Foundation

struct Ingredient: Identifiable {
    let id = UUID()
    var name: String
    var points = ""
    var healthyRating: healthyRating
    var isEaten: Bool = false
    enum healthyRating {
        case healthy
        case unhealthy
        case neutral
    }
}
