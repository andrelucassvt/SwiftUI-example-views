//
//  UserView.swift
//  Views-example
//
//  Created by André  Lucas on 05/10/23.
//

import SwiftUI

struct UserView: View {
    var body: some View {
        ZStack{
            VStack{
                Rectangle()
                    .frame(height:400)
                    .overlay(
                        Image("paisagem")
                            .resizable()
                            .compositingGroup()
                            .blur(radius: 2)
                            .colorMultiply(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/.opacity(0.8))
                    )
                HStack{
                    Text("ABOUT")
                        .fontWeight(.bold)
                    Spacer()
                    Text("See All")
                        .foregroundColor(.blue)
                        .fontWeight(.bold)
                    Image(systemName: "chevron.right")
                        .foregroundColor(.blue)
                }
                .padding()
                
                Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.")
                    .padding()
                    .foregroundColor(.gray)
                Spacer()
            }
            
            VStack{
                Image("eu")
                    .resizable()
                    .frame(width: 130, height: 130)
                    .clipShape(Circle())
                    .padding(.top,40)
                Text("André Lucas")
                    .foregroundColor(.white)
                    .font(.title)
                    .fontWeight(.bold)
                    .padding(.bottom,10)
                Text("Work hard in silence. Let your\nsuccess be the noise")
                    .multilineTextAlignment(.center)
                    .foregroundColor(.white)
                    .padding([.bottom])
                
                HStack(spacing: 20){
                    VStack{
                        Image(systemName: "message")
                            .padding(.bottom,5)
                        Text("Alerts")
                        Text("3")
                            .fontWeight(.bold)

                    }
                    .foregroundColor(.white)
                    VStack{
                        Image(systemName: "heart")
                            .padding(.bottom,5)
                        Text("Places")
                        Text("5")
                            .fontWeight(.bold)

                    }
                    .foregroundColor(.white)
                    VStack{
                        Image(systemName: "camera")
                            .padding(.bottom,5)
                        Text("Shots")
                        Text("10")
                            .fontWeight(.bold)

                    }
                    .foregroundColor(.white)
                    VStack{
                        Image(systemName: "link")
                            .padding(.bottom,5)
                        Text("Friends")
                        Text("50")
                            .fontWeight(.bold)

                    }
                    .foregroundColor(.white)
                }
                Spacer()
            }
        }
    }
}

#Preview {
    UserView()
}
