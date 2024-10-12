//
//  RecipesCellView.swift
//  YummyTreats
//
//  Created by Zoe Sher on 9/21/24.
//

import SwiftUI

struct RecipesCellView: View {
    var hapticImpact = UIImpactFeedbackGenerator(style: .heavy)
    @State private var showModal: Bool = false
    
    let foodImage: String
    let title: String
    let id: String
    
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 22.0)
                .foregroundColor(Color.init(red: 78/256, green: 43/256, blue: 86/256))
                .padding(.horizontal)
                
            VStack {
                Text(title)
                    .font(.system(.title, design: .serif))
                    .fontWeight(.bold)
                    .padding(.top, 10)
                    .multilineTextAlignment(.center)
                
                    AsyncImage(url: URL(string: foodImage)){ result in
                            result.image?
                                .resizable()
                                .scaledToFit()
                        }
                    
                    
                    //.scaledToFit()
                    //.cornerRadius(22.0)
                    //.padding(.horizontal, 15)
                
                Text(id)
                    .padding(.vertical, 10)
                    .font(.system(.title, design: .serif))
                    .fontWeight(.light)
            } 
            .foregroundColor(Color.init(red: 251/256, green: 169/256, blue: 23/256))
            .frame(width: UIScreen.main.bounds.width - 60)
            
        }
        .onTapGesture {
            self.hapticImpact.impactOccurred()
            self.showModal = true
        }
        .sheet(isPresented: self.$showModal) {
            RecipeCellDetailsView(foodItem: MainViewModel.shared.currentDetailedDessert, title: title, id: id)
        }
       
    }
     
}

#Preview {
       // Color.init(red: 0.95, green: 0.95, blue: 0.95)
    VStack {
        RecipesCellView(foodImage: "appleBlackberryCrumble", title: "title", id: "5678")
            
        RecipesCellView(foodImage: "appleBlackberryCrumble", title: "title", id: "5678")
            
    }.background(.gray)
}
