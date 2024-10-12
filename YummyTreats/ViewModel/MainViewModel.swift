//
//  MainViewModel.swift
//  YummyTreats
//
//  Created by Zoe Sher on 9/22/24.
//

import Foundation


// EndToEnd:     View -> ViewModel -> NetworkManager -> ViewModel -> View

class MainViewModel: ObservableObject {
    static let shared = MainViewModel() //Shared Instance (Singleton)
    
    //Network Manager Instance.
    let networkManager = NetworkManager()
    
    //
    @Published var dessertList: [FoodItemModel] = [] {
        didSet{
            print("Count of desserList: \(dessertList.count)")
        }
    }
    @Published var currentDetailedDessert: FoodItemDetailModel = FoodItemDetailModel() {
        didSet{
            print("currentDetailedDessert: \(currentDetailedDessert.idMeal)")
            MainViewModel.shared.objectWillChange.send()
        }
    }
    
    @Published var ingredientsArray: [String] = []
    
    func loadDessertList() {
        networkManager.fetchDessertList()
    }
    func loadDetailedDessert(id: String) {
        networkManager.fetchDetailedDessert(dessertId: id)
    }
    
    func turnIngredientsIntoArray() {
        
    }
    
}
