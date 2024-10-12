//
//  HomeView.swift
//  YummyTreats
//
//  Created by Zoe Sher on 9/21/24.
//

import SwiftUI

struct HomeView: View {
    
    @State private var pulsateAnimation: Bool = false
    
    var body: some View {
        
        VStack {
            Text("Home Coming Soon!")
                .font(.system(.title, design: .serif))
                .fontWeight(.medium)
                .foregroundStyle(Color.init(red: 251/256, green: 169/256, blue: 23/256))
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .shadow(color: Color("ColorBlackTransparentDark"), radius: 4, x: 0, y: 4)
            
            Image(systemName: "fork.knife.circle")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 140, height: 140, alignment: .center)
                .foregroundStyle(Color.init(red: 251/256, green: 169/256, blue: 23/256))
                .offset(x: 0, y: -250)
                //.shadow(color: Color("ColorBlackTransparentDark"), radius: 12, x: 0, y: 8)
                .scaleEffect(self.pulsateAnimation ? 1 : 0.9)
                .opacity(self.pulsateAnimation ? 1 : 0.9)
                .animation(Animation.easeInOut(duration: 1.5).repeatForever(autoreverses: true))
            
        }
        .background(Color.init(red: 48/256, green: 13/256, blue: 56/256))
     
        .onAppear(perform: {
            self.pulsateAnimation.toggle()
            MainViewModel.shared.loadDessertList()
        })
    }
}

#Preview {
    HomeView()
}
