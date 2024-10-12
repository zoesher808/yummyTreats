//
//  DetailedMealItemModel.swift
//  YummyTreats
//
//  Created by Zoe Sher on 9/26/24.
//

import Foundation

struct DetailedMealResponseDecodable: Decodable {
    var meals: [DetailedMealItemModel]?
    
    enum CodingKeys: CodingKey {
        case meals
    }
    
    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.meals = try container.decodeIfPresent([DetailedMealItemModel].self, forKey: .meals)
    }
}
