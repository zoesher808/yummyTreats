//
//  RecipesView.swift
//  YummyTreats
//
//  Created by Zoe Sher on 9/21/24.
//

import SwiftUI

struct RecipesView: View {
    
    @State var foodList: [FoodItemModel] = []
    
    var body: some View {
        ZStack{
            Color.init(red: 48/256, green: 13/256, blue: 56/256)
                .ignoresSafeArea()
            ScrollView(.vertical, showsIndicators: false) {
                ForEach(foodList) { index in
                    RecipesCellView(foodImage: index.strMealThumb, title: index.strMeal, id: index.idMeal)
                        .frame(width: UIScreen.main.bounds.width - 20)
                }
               
            }
        }.foregroundStyle(.white)
        .onReceive(MainViewModel.shared.$dessertList, perform: { _ in
            foodList = MainViewModel.shared.dessertList
        })
    }
}

#Preview {
    RecipesView()
}
