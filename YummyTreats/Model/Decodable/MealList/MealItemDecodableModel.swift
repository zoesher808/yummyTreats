//
//  MealItemDecodableModel.swift
//  YummyTreats
//
//  Created by Zoe Sher on 9/26/24.
//

import Foundation

struct MealItemDecodableModel: Decodable {
    var strMeal: String
    var strMealThumb: String
    var idMeal: String
    
    enum CodingKeys: CodingKey {
        case strMeal
        case strMealThumb
        case idMeal
    }
    
    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.strMeal = try container.decode(String.self, forKey: .strMeal)
        self.strMealThumb = try container.decode(String.self, forKey: .strMealThumb)
        self.idMeal = try container.decode(String.self, forKey: .idMeal)
    }
}


