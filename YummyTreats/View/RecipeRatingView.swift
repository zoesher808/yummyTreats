//
//  RecipeRatingView.swift
//  YummyTreats
//
//  Created by Zoe Sher on 10/4/24.
//

import SwiftUI

struct RecipeRatingView: View {
    var body: some View {
        HStack {
            ForEach(1...5, id: \.self) { _ in
                Image(systemName: "star.fill")
                    .font(.body)
                .foregroundColor(Color.yellow)
            }
        }
       
    }
}

#Preview {
    RecipeRatingView()
}
