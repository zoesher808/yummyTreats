//
//  FoodItemModel.swift
//  YummyTreats
//
//  Created by Zoe Sher on 9/21/24.
//

import Foundation

struct FoodItemModel: Identifiable, Decodable {
    var id: Int
    var strMeal: String
    var strMealThumb: String
    var idMeal: String
    
    enum CodingKeys: CodingKey {
        case id
        case strMeal
        case strMealThumb
        case idMeal
    }
    
    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.id = try container.decode(Int.self, forKey: .id)
        self.strMeal = try container.decode(String.self, forKey: .strMeal)
        self.strMealThumb = try container.decode(String.self, forKey: .strMealThumb)
        self.idMeal = try container.decode(String.self, forKey: .idMeal)
    }
    
    init(id: Int, item: MealItemDecodableModel){
        self.id = id
        self.strMeal = item.strMeal
        self.strMealThumb = item.strMealThumb
        self.idMeal = item.idMeal
    }
}

