//
//  RecipeCellDetailsView.swift
//  YummyTreats
//
//  Created by Zoe Sher on 9/22/24.
//

import SwiftUI

struct RecipeCellDetailsView: View {
   
    @State var foodItem: FoodItemDetailModel = FoodItemDetailModel()
    @State var isUpdating: Bool = false
    let title: String
    let id: String
    
    var body: some View {
        ZStack{
            if isUpdating {
                Text("hi")
            }
            
               
            
            ScrollView {
                VStack(alignment: .center, spacing: 10) {
                    //Group {
                    
                    AsyncImage(url: URL(string: foodItem.strMealThumb)){ result in
                        result.image?
                                .resizable()
                                .scaledToFit()
                                
                    }
                    .frame(width: UIScreen.main.bounds.width - 60, height:400)
                    .padding(.top)
                    
                    Text(title)
                        .font(.system(.title, design: .serif))
                        .multilineTextAlignment(.center)
                        .fontWeight(.bold)
                        .foregroundColor(Color.init(red: 251/256, green: 169/256, blue: 23/256))
                        .padding(.vertical)
                    
                    RecipeRatingView()
                    
                   
                    Text("Ingredients")
                        .font(.system(.title, design: .serif))
                        .fontWeight(.bold)
                        .foregroundColor(Color.init(red: 251/256, green: 169/256, blue: 23/256))
                        .padding(.vertical, 10)
                    
                    VStack(alignment: .leading, spacing: 5) {
                        
                        if foodItem.strIngredient1 != "" {
                            HStack {
                                Text("1. ")
                                
                                Text(foodItem.strIngredient1)
                                    
                                Text("(\(foodItem.strMeasure1))")
                                    .foregroundColor(Color.init(red: 0.75, green: 0.75, blue: 0.75))
                                
                            }
                        }
                        
                        if foodItem.strIngredient2 != "" {
                            HStack {
                                Text("2. ")
                                
                                Text(foodItem.strIngredient2)
                                    .multilineTextAlignment(.leading)
                                
                                Text("(\(foodItem.strMeasure2))")
                                    .foregroundColor(Color.init(red: 0.75, green: 0.75, blue: 0.75))
                            }
                        }
                      
                        if foodItem.strIngredient3 != "" {
                            HStack {
                                Text("3. ")
                                
                                Text(foodItem.strIngredient3)
                                
                                Text("(\(foodItem.strMeasure3))")
                                    .foregroundColor(Color.init(red: 0.75, green: 0.75, blue: 0.75))
                            }
                        }
                       
                        if foodItem.strIngredient4 != "" {
                            HStack {
                                Text("4. ")
                                
                                Text(foodItem.strIngredient4)
                                
                                Text("(\(foodItem.strMeasure4))")
                                    .foregroundColor(Color.init(red: 0.75, green: 0.75, blue: 0.75))
                            }
                        }
                       
                        if foodItem.strIngredient5 != "" {
                            HStack {
                                Text("5. ")
                                
                                Text(foodItem.strIngredient5)
                                
                                Text("(\(foodItem.strMeasure5))")
                                    .foregroundColor(Color.init(red: 0.75, green: 0.75, blue: 0.75))
                            }
                        }
                       
                        if foodItem.strIngredient6 != "" {
                            HStack {
                                Text("6. ")
                                
                                Text(foodItem.strIngredient6)
                                
                                Text("(\(foodItem.strMeasure6))")
                                    .foregroundColor(Color.init(red: 0.75, green: 0.75, blue: 0.75))
                            }
                        }
                        
                        if foodItem.strIngredient7 != "" {
                            HStack {
                                Text("7. ")
                                
                                Text(foodItem.strIngredient7)
                                
                                Text("(\(foodItem.strMeasure7))")
                                    .foregroundColor(Color.init(red: 0.75, green: 0.75, blue: 0.75))
                            }
                        }
                       
                        if foodItem.strIngredient8 != "" {
                            HStack {
                                Text("8. ")
                                
                                Text(foodItem.strIngredient8)
                                
                                Text("(\(foodItem.strMeasure8))")
                                    .foregroundColor(Color.init(red: 0.75, green: 0.75, blue: 0.75))
                            }
                        }
                      
                        if foodItem.strIngredient9 != "" {
                            HStack {
                                Text("9. ")
                                
                                Text(foodItem.strIngredient9)
                                
                                Text("(\(foodItem.strMeasure9))")
                                    .foregroundColor(Color.init(red: 0.75, green: 0.75, blue: 0.75))
                            }
                        }
                      
                        if foodItem.strIngredient10 != "" {
                            HStack {
                                Text("10. ")
                                
                                Text(foodItem.strIngredient10)
                                
                                Text("(\(foodItem.strMeasure10))")
                                    .foregroundColor(Color.init(red: 0.75, green: 0.75, blue: 0.75))
                            }
                        }
                       
                        if foodItem.strIngredient11 != "" {
                            HStack {
                                Text("11. ")
                                
                                Text(foodItem.strIngredient11)
                                
                                Text("(\(foodItem.strMeasure11))")
                                    .foregroundColor(Color.init(red: 0.75, green: 0.75, blue: 0.75))
                            }
                        }
                      
                        if foodItem.strIngredient12 != "" {
                            HStack {
                                Text("12. ")
                                
                                Text(foodItem.strIngredient12)
                                
                                Text("(\(foodItem.strMeasure12))")
                                    .foregroundColor(Color.init(red: 0.75, green: 0.75, blue: 0.75))
                                
                            }
                        }
                       
                        if foodItem.strIngredient13 != "" {
                            HStack {
                                Text("13. ")
                                
                                Text(foodItem.strIngredient13)
                                
                                Text("(\(foodItem.strMeasure13))")
                                    .foregroundColor(Color.init(red: 0.75, green: 0.75, blue: 0.75))
                            }
                        }
                       
                        if foodItem.strIngredient14 != "" {
                            HStack {
                                Text("14. ")
                                
                                Text(foodItem.strIngredient14)
                                
                                Text("(\(foodItem.strMeasure14))")
                                    .foregroundColor(Color.init(red: 0.75, green: 0.75, blue: 0.75))
                            }
                        }
                      
                        if foodItem.strIngredient15 != "" {
                            HStack {
                                Text("15. ")
                                
                                Text(foodItem.strIngredient15)
                                
                                Text("(\(foodItem.strMeasure15))")
                                    .foregroundColor(Color.init(red: 0.75, green: 0.75, blue: 0.75))
                            }
                        }
                      
                        if foodItem.strIngredient16 != "" {
                            HStack {
                                Text("16. ")
                                
                                Text(foodItem.strIngredient16)
                                
                                Text("(\(foodItem.strMeasure16))")
                                    .foregroundColor(Color.init(red: 0.75, green: 0.75, blue: 0.75))
                            }
                        }
                       
                        if foodItem.strIngredient17 != "" {
                            HStack {
                                Text("17. ")
                                
                                Text(foodItem.strIngredient17)
                                
                                Text("(\(foodItem.strMeasure17))")
                                    .foregroundColor(Color.init(red: 0.75, green: 0.75, blue: 0.75))
                            }
                        }
                      
                        if foodItem.strIngredient18 != "" {
                            HStack {
                                Text("18. ")
                                
                                Text(foodItem.strIngredient18)
                                
                                Text("(\(foodItem.strMeasure18))")
                                    .foregroundColor(Color.init(red: 0.75, green: 0.75, blue: 0.75))
                            }
                        }
                       
                        if foodItem.strIngredient19 != "" {
                            HStack {
                                Text("19. ")
                                
                                Text(foodItem.strIngredient19)
                                
                                Text("(\(foodItem.strMeasure19))")
                                    .foregroundColor(Color.init(red: 0.75, green: 0.75, blue: 0.75))
                            }
                        }
                      
                        if foodItem.strIngredient19 != "" {
                            HStack {
                                Text("20. ")
                                
                                Text(foodItem.strIngredient20)
                                
                                Text("(\(foodItem.strMeasure20))")
                                    .foregroundColor(Color.init(red: 0.75, green: 0.75, blue: 0.75))
                            }
                        }
                       
                        
                    }
                    
                    Text("Instructions")
                        .font(.system(.title, design: .serif))
                        .fontWeight(.bold)
                        .foregroundColor(Color.init(red: 251/256, green: 169/256, blue: 23/256))
                        .padding(.vertical, 10)
                    
                    Text(foodItem.strInstructions)
                            .fontWeight(.light)
                            .multilineTextAlignment(.leading)
                            .padding(.top, 10)
                            .padding(.horizontal)
                
                    Spacer(minLength: 150)
                    //}
                }
            }
        }
        .background(Color.init(red: 48/256, green: 13/256, blue: 56/256))
                .ignoresSafeArea()
        .onAppear() {
            MainViewModel.shared.loadDetailedDessert(id: id)
        }
        .onReceive(MainViewModel.shared.$currentDetailedDessert, perform: { _ in
            foodItem = MainViewModel.shared.currentDetailedDessert
        })

      
    }
}

#Preview {
    RecipeCellDetailsView(foodItem: FoodItemDetailModel(id: 0, item: DetailedMealItemModel()), title: "name of dessert", id: "0")
}
