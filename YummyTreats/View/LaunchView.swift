//
//  LaunchView.swift
//  YummyTreats
//
//  Created by Zoe Sher on 9/21/24.
//

import SwiftUI

struct LaunchView: View {
    var body: some View {
        ZStack{
            Color.init(red: 48/256, green: 13/256, blue: 56/256)
                .ignoresSafeArea()
            VStack{
                Text("Yummy Treats")
                    .foregroundColor(Color.init(red: 251/256, green: 169/256, blue: 23/256))
                    .font(.system(size: 42, weight: .bold, design: .serif))
                ProgressView()
            }
                
        }
    }
}
    
    #Preview {
        LaunchView()
    }

