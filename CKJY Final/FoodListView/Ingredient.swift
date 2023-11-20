//
//  Ingredients.swift
//  CKJY Final
//
//  Created by Celine Quek on 20/11/23.
//

import Foundation

struct Ingredient {
    var name: String
    var healthyRating: healthyRating
    enum healthyRating {
        case healthy
        case unhealthy
        case neutral
    }
}
