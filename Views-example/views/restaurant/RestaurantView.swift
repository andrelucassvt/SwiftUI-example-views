//
//  RestaurantView.swift
//  Views-example
//
//  Created by André  Lucas on 22/08/23.
//

import SwiftUI

struct RestaurantView: View {
    @State private var selectedCategory: String = "Burgers"
    var body: some View {
        NavigationView{
            VStack{
                HStack{
                    FoodCategory(
                             nameCategory: "Burgers",
                             iconCategory: "🍔",
                             isSelected: selectedCategory == "Burgers"
                         )
                         .onTapGesture {
                             selectedCategory = "Burgers"
                         }
                         
                         FoodCategory(
                             nameCategory: "Pizza",
                             iconCategory: "🍕",
                             isSelected: selectedCategory == "Pizza"
                         )
                         .onTapGesture {
                             selectedCategory = "Pizza"
                         }
                         
                         FoodCategory(
                             nameCategory: "Snacks",
                             iconCategory: "🍟",
                             isSelected: selectedCategory == "Snacks"
                         )
                         .onTapGesture {
                             selectedCategory = "Snacks"
                         }
                         
                         FoodCategory(
                             nameCategory: "Sushi",
                             iconCategory: "🍣",
                             isSelected: selectedCategory == "Sushi"
                         )
                         .onTapGesture {
                             selectedCategory = "Sushi"
                         }
                }
                .padding([.top,.bottom])
                ScrollView(showsIndicators: false){
                    FoodCard()
                    FoodCard()
                    FoodCard()
                }
                .padding(.horizontal)
            }
            .navigationTitle("Restaurant")
        }
        .navigationViewStyle(.stack)
    }
}

struct RestaurantView_Previews: PreviewProvider {
    static var previews: some View {
        RestaurantView()
    }
}
