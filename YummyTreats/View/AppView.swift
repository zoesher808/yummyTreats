//
//  AppView.swift
//  YummyTreats
//
//  Created by Zoe Sher on 9/21/24.
//

import SwiftUI

struct AppView: View {
    @State private var selection = 1
    
    var body: some View {
        TabView (selection: $selection) {
            HomeView()
                .tabItem ({
                    VStack{
                        Image(systemName: "house")
                        Text("Home")
                    }
                })
                .tag(0)
            RecipesView()
                .tabItem ({
                    VStack{
                        Image(systemName: "book")
                        Text("Recipes")
                    }
                })
                .tag(1)
            SettingsView()
                .tabItem ({
                    VStack{
                        Image(systemName: "gearshape")
                            .renderingMode(.template)
                            
                        Text("Settings")
                    }
                    .foregroundColor(Color.init(red: 251/256, green: 169/256, blue: 23/256))
                })
                .tag(2)
        }.onAppear(){
            
            
            let appearance = UITabBarAppearance()
            appearance.backgroundEffect = UIBlurEffect(style: .systemUltraThinMaterial)
            appearance.backgroundColor = UIColor(Color.init(red: 48/256, green: 13/256, blue: 56/256))
            
            UITabBar.appearance().standardAppearance = appearance
            UITabBar.appearance().scrollEdgeAppearance = appearance
        }
    }
}

#Preview {
    AppView()
}
