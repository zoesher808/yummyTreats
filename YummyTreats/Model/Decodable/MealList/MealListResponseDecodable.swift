//
//  FoodItemDecodableModel.swift
//  YummyTreats
//
//  Created by Zoe Sher on 9/26/24.
//

import Foundation

struct MealListResponseDecodable: Decodable {
    var meals: [MealItemDecodableModel]?
    
    enum CodingKeys: CodingKey {
        case meals
    }
    
    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.meals = try container.decodeIfPresent([MealItemDecodableModel].self, forKey: .meals)
    }
}
