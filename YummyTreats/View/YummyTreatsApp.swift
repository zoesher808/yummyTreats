//
//  YummyTreatsApp.swift
//  YummyTreats
//
//  Created by Zoe Sher on 9/21/24.
//

import SwiftUI

@main
struct YummyTreatsApp: App {
    
    @State var isShowingLaunch: Bool = true
    
    var body: some Scene {
        WindowGroup {
            if isShowingLaunch {
                LaunchView()
                    .onAppear() {
                        MainViewModel.shared.loadDessertList()
                        DispatchQueue.main.asyncAfter(deadline: .now() + 3.0) {
                            isShowingLaunch = false
                        }
                    }
            } else {
                AppView()
            }
        }
    }
}
