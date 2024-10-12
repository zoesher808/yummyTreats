//
//  FoodItemDetailModel.swift
//  YummyTreats
//
//  Created by Zoe Sher on 9/22/24.
//

import Foundation

struct FoodItemDetailModel: Identifiable, Equatable {
    var id: Int
    var idMeal: String
    var strMeal: String
    var strDrinkAlternate: Bool
    var strCategory: String
    var strArea: String
    var strInstructions: String
    var strMealThumb: String
    var strTags: String
    var strYoutube: String
    var strIngredient1: String
    var strIngredient2: String
    var strIngredient3: String
    var strIngredient4: String
    var strIngredient5: String
    var strIngredient6: String
    var strIngredient7: String
    var strIngredient8: String
    var strIngredient9: String
    var strIngredient10: String
    var strIngredient11: String
    var strIngredient12: String
    var strIngredient13: String
    var strIngredient14: String
    var strIngredient15: String
    var strIngredient16: String
    var strIngredient17: String
    var strIngredient18: String
    var strIngredient19: String
    var strIngredient20: String
    var strMeasure1: String
    var strMeasure2: String
    var strMeasure3: String
    var strMeasure4: String
    var strMeasure5: String
    var strMeasure6: String
    var strMeasure7: String
    var strMeasure8: String
    var strMeasure9: String
    var strMeasure10: String
    var strMeasure11: String
    var strMeasure12: String
    var strMeasure13: String
    var strMeasure14: String
    var strMeasure15: String
    var strMeasure16: String
    var strMeasure17: String
    var strMeasure18: String
    var strMeasure19: String
    var strMeasure20: String
    var strSource: String
    var strImageSource: Bool
    var strCreativeCommonsConfirmed: Bool
    var dateModified: Bool

    
    init() {
        id = 0
        idMeal = ""
        strMeal = ""
        strDrinkAlternate = false
        strCategory = ""
        strArea = ""
        strInstructions = ""
        strMealThumb = ""
        strTags = ""
        strYoutube = ""
        strIngredient1 = ""
        strIngredient2 = ""
        strIngredient3 = ""
        strIngredient4 = ""
        strIngredient5 = ""
        strIngredient6 = ""
        strIngredient7 = ""
        strIngredient8 = ""
        strIngredient9 = ""
        strIngredient10 = ""
        strIngredient11 = ""
        strIngredient12 = ""
        strIngredient13 = ""
        strIngredient14 = ""
        strIngredient15 = ""
        strIngredient16 = ""
        strIngredient17 = ""
        strIngredient18 = ""
        strIngredient19 = ""
        strIngredient20 = ""
        strMeasure1 = ""
        strMeasure2 = ""
        strMeasure3 = ""
        strMeasure4 = ""
        strMeasure5 = ""
        strMeasure6 = ""
        strMeasure7 = ""
        strMeasure8 = ""
        strMeasure9 = ""
        strMeasure10 = ""
        strMeasure11 = ""
        strMeasure12 = ""
        strMeasure13 = ""
        strMeasure14 = ""
        strMeasure15 = ""
        strMeasure16 = ""
        strMeasure17 = ""
        strMeasure18 = ""
        strMeasure19 = ""
        strMeasure20 = ""
        strSource = ""
        strImageSource = false
        strCreativeCommonsConfirmed = false
        dateModified = false
    }
    
    init(id: Int, item: DetailedMealItemModel) {
        self.id = id
        idMeal = item.idMeal
        strMeal = item.strMeal
        strDrinkAlternate = item.strDrinkAlternate ?? false
        strCategory = item.strCategory
        strArea = item.strArea
        strInstructions = item.strInstructions
        strMealThumb = item.strMealThumb
        strTags = item.strTags ?? ""
        strYoutube = item.strYoutube
        strIngredient1 = item.strIngredient1
        strIngredient2 = item.strIngredient2
        strIngredient3 = item.strIngredient3
        strIngredient4 = item.strIngredient4
        strIngredient5 = item.strIngredient5
        strIngredient6 = item.strIngredient6
        strIngredient7 = item.strIngredient7
        strIngredient8 = item.strIngredient8
        strIngredient9 = item.strIngredient9
        strIngredient10 = item.strIngredient10
        strIngredient11 = item.strIngredient11
        strIngredient12 = item.strIngredient12
        strIngredient13 = item.strIngredient13
        strIngredient14 = item.strIngredient14
        strIngredient15 = item.strIngredient15
        strIngredient16 = item.strIngredient16 ?? ""
        strIngredient17 = item.strIngredient17 ?? ""
        strIngredient18 = item.strIngredient18 ?? ""
        strIngredient19 = item.strIngredient19 ?? ""
        strIngredient20 = item.strIngredient20 ?? ""
        strMeasure1 = item.strMeasure1
        strMeasure2 = item.strMeasure2
        strMeasure3 = item.strMeasure3
        strMeasure4 = item.strMeasure4
        strMeasure5 = item.strMeasure5
        strMeasure6 = item.strMeasure6
        strMeasure7 = item.strMeasure7
        strMeasure8 = item.strMeasure8
        strMeasure9 = item.strMeasure9
        strMeasure10 = item.strMeasure10
        strMeasure11 = item.strMeasure11
        strMeasure12 = item.strMeasure12
        strMeasure13 = item.strMeasure13
        strMeasure14 = item.strMeasure14
        strMeasure15 = item.strMeasure15
        strMeasure16 = item.strMeasure16 ?? ""
        strMeasure17 = item.strMeasure17 ?? ""
        strMeasure18 = item.strMeasure18 ?? ""
        strMeasure19 = item.strMeasure19 ?? ""
        strMeasure20 = item.strMeasure20 ?? ""
        strSource = item.strSource ?? ""
        strImageSource = item.strImageSource ?? false
        strCreativeCommonsConfirmed = item.strCreativeCommonsConfirmed ?? false
        dateModified = item.dateModified ?? false
    }
}
