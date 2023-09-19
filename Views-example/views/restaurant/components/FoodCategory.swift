//
//  FoodCategory.swift
//  Views-example
//
//  Created by André  Lucas on 22/08/23.
//

import SwiftUI

struct FoodCategory: View {
    let nameCategory: String
    let iconCategory: String
    let isSelected: Bool
    var body: some View {
        RoundedRectangle(cornerRadius: 50)
            .frame(width: 80, height: 130)
            .foregroundColor(isSelected ? .orange : .white)
            .overlay(
                VStack{
                    Circle()
                        .frame(width: 60, height: 60)
                        .foregroundColor(Color(UIColor(red: 0.90, green: 0.89, blue: 0.89, alpha: 1.00)))
                        .overlay(
                            Text(iconCategory)
                                .font(.largeTitle)
                        )
                        .padding(.top,10)
                    Text(nameCategory)
                        .foregroundColor(isSelected ? .white : .black)
                        .padding([.bottom,])
                }
            )
            .shadow(color: Color.black.opacity(0.2), radius: 4, x: 0, y: 2)
            
    }
}

struct FoodCategory_Previews: PreviewProvider {
    static var previews: some View {
        FoodCategory(
            nameCategory: "Pizza",
            iconCategory: "🍕",
            isSelected: true
        )
    }
}
