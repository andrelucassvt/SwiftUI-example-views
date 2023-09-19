//
//  FoodCard.swift
//  Views-example
//
//  Created by André  Lucas on 23/08/23.
//

import SwiftUI

struct FoodCard: View {
    var body: some View {
        VStack{
            RoundedRectangle(cornerRadius: 30)
                .frame(height: 170)
                .overlay(
                    ZStack{
                        Image("hb")
                            .resizable()
                            .cornerRadius(30)
                        VStack{
                            Spacer()
                            HStack{
                                Rectangle()
                                    .foregroundColor(.white)
                                    .frame(width: 160 ,height: 50)
                                    .roundedCorner(20, corners: [.topRight])
                                    .overlay(
                                        Text("25 ~ 30 min")
                                            .fontWeight(.bold)
                                    )
                                Spacer()
                            }
                        }
                    }
                )
            HStack{
                Text("Burgers Story")
                    .font(.title2)
                    .fontWeight(.bold)
                Spacer()
            }
            .padding(.top)
            
            HStack{
                Image(systemName: "star.fill")
                Text("4,7")
                Text("Burgers")
                Text("-")
                Text("Snacks")
                Text("-")
                Text("$$$")
                Spacer()
            }
            .padding(.top,3)
            
        }
        .padding(.bottom)
        .shadow(color: Color.black.opacity(0.2), radius: 4, x: 0, y: 2)
    }
}

struct FoodCard_Previews: PreviewProvider {
    static var previews: some View {
        FoodCard()
    }
}


struct RoundedCorner: Shape {
    var radius: CGFloat = .infinity
    var corners: UIRectCorner = .allCorners
    
    func path(in rect: CGRect) -> Path {
        let path = UIBezierPath(roundedRect: rect, byRoundingCorners: corners, cornerRadii: CGSize(width: radius, height: radius))
        return Path(path.cgPath)
    }
}

extension View {
    func roundedCorner(_ radius: CGFloat, corners: UIRectCorner) -> some View {
        clipShape(RoundedCorner(radius: radius, corners: corners) )
    }
}
