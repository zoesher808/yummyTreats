//
//  NetworkManager.swift
//  YummyTreats
//
//  Created by Zoe Sher on 9/22/24.
//

import Foundation

class NetworkManager: ObservableObject {
    var urlDessertList = "https://themealdb.com/api/json/v1/1/filter.php?c=Dessert"
    var urlDetailedDessert = "https://themealdb.com/api/json/v1/1/lookup.php?i="
    
    func fetchDessertList() {
        var tempArray: [FoodItemModel] = []
        let tempURL = URL(string: urlDessertList)!
        
        URLSession.shared.dataTask(with: tempURL) { data, response, error in
            //print("data: \(String(describing: data)) \n response: \(String(describing: response)) \n error: \(String(describing: error))")
            //let responseBody = String(data: data!, encoding: .utf8)
            //print("Body: \(responseBody ?? "")")
            let decode = try! JSONDecoder().decode(MealListResponseDecodable.self, from: data!)
            if decode.meals != nil {
                //print("decode.meals.count: \(decode.meals!.count))")
                for i in 0..<decode.meals!.count {
                    MainViewModel.shared.dessertList.append(FoodItemModel.init(id: i, item: decode.meals![i]))
                }
                
                // = decode.meals!
            } else {
                print("Could not decode: \(try! JSONDecoder().decode(MealListResponseDecodable.self, from: data!))")
            }
            //MainViewModel.shared.dessertList = try! JSONDecoder().decode(FoodItemCoreModel.self, from: data!).meal
            
            //
        }.resume()
    }
    
    func fetchDetailedDessert(dessertId: String) {
        let tempURL = URL(string: (urlDetailedDessert + dessertId))!
        
        URLSession.shared.dataTask(with: tempURL) { data, response, error in
            //print("data: \(String(describing: data)) \n response: \(String(describing: response)) \n error: \(String(describing: error))")
            //let responseBody = String(data: data!, encoding: .utf8)
            //print("Body: \(responseBody ?? "")")
            let decode = try! JSONDecoder().decode(DetailedMealResponseDecodable.self, from: data!)
            if decode.meals != nil {
                //print("decode.meals.count: \(decode.meals!.count))")
                MainViewModel.shared.currentDetailedDessert = FoodItemDetailModel.init(id: 0, item: decode.meals![0])
                        
                // = decode.meals!
            } else {
                print("Could not decode: \(try! JSONDecoder().decode(DetailedMealResponseDecodable.self, from: data!))")
            }
            //MainViewModel.shared.dessertList = try! JSONDecoder().decode(FoodItemCoreModel.self, from: data!).meal
            
            //
        }.resume()
        
    }
    
}

/*
 //1.Setup the request
 var request = URLRequest(url: tempURL)
 request.httpMethod = "GET"  // optional
 request.setValue("application/json", forHTTPHeaderField: "Content-Type"
                  
 //2. Perform the request
  let task = URLSession.shared.dataTask(with: request){ data, response, error in
      if let error = error {
          print("Error while fetching data:", error)
          return
      }

      guard let data = data else {
          return
      }

     //3. Decode
      do {
          let posts = try JSONDecoder().decode([Post].self, from: data) // Since the JSON in the URL starts with array([]), we will be using [Post].self. If the JSON starts with curly braces ({}), use Post.self
          // Fetching each element from array
          for post in posts {
              print("User ID:", post.userId)
              print("Id:", post.id)
              print("Title:", post.title)
              print("Body:", post.body)
          }
      } catch let jsonError {
          print("Failed to decode json", jsonError)
      }

  }
 */
/*
func fetchDessertListALT() -> [FoodItemModel] {
    var tempArray: [FoodItemModel] = []
    let tempURL = URL(string: urlDessertList)!
    
    var request = URLRequest(url: tempURL)
    request.httpMethod = "GET"  // optional
    //request.setValue("application/json", forHTTPHeaderField: "Content-Type")
    
    let task = URLSession.shared.dataTask(with: request){ data, response, error in
        if let error = error {
            print("Error while fetching data:", error)
            return
        }
        //print("data: \(String(describing: data)) \n\n response: \(String(describing: response)) \n\n error: \(String(describing: error))")
        guard let data = data else {
            
            return
        }

    do {
            let posts = try JSONDecoder().decode(FoodItemCoreModel.self, from: data) // Since the JSON in the URL starts with array([]), we will be using [Post].self. If the JSON starts with curly braces ({}), use Post.self
            // Fetching each element from array
            /*
            for post in posts {
                print("User ID:", post.userId)
                print("Id:", post.id)
                print("Title:", post.title)
                print("Body:", post.body)
            }*/
        } catch let jsonError {
            print("Failed to decode json", jsonError)
        }

    }.resume()
    
    return tempArray
}*/
