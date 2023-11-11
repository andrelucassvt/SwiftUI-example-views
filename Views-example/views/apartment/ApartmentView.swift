//
//  ApartmentView.swift
//  Views-example
//
//  Created by André  Lucas on 10/11/23.
//

import SwiftUI

struct ApartmentView: View {
    var body: some View {
        NavigationView{
            VStack(alignment: .leading){
                HStack{
                    Image(systemName: "envelope.fill")
                        .font(.system(size: 30))
                    Spacer()
                    Image("eu")
                        .resizable()
                        .frame(width: 50,height: 50)
                        .clipShape(Circle())
                    
                }
                
                Text("Find Your\nDream Home")
                    .font(.title)
                    .fontWeight(.bold)
                    .padding([.top,.bottom])
                RoundedRectangle(cornerRadius: 50)
                    .foregroundColor(.gray.opacity(0.2))
                    .frame(width: .infinity,height: 70)
                    .overlay(
                        HStack{
                            Image(systemName: "magnifyingglass")
                                .foregroundColor(.gray)
                            Text("Search")
                                .foregroundColor(.gray)
                            Spacer()
                        }
                        .padding()
                    )
                ScrollView(.horizontal,showsIndicators: false){
                    HStack{
                        RoundedRectangle(cornerRadius: 30)
                            .frame(width: 170, height: 45)
                            .foregroundColor(.blue)
                            .overlay(
                                Text("Residencial")
                                    .foregroundColor(.white)
                            )
                        
                        RoundedRectangle(cornerRadius: 30)
                            .frame(width: 170, height: 45)
                            .foregroundColor(.white)
                            .overlay(
                                Text("Comercial")
                                    .foregroundColor(.black)
                            )
                            .overlay(
                                RoundedRectangle(cornerRadius: 30)
                                    .stroke(lineWidth: 1)
                                    .foregroundColor(.gray)
                            )
                        RoundedRectangle(cornerRadius: 30)
                            .frame(width: 170, height: 45)
                            .foregroundColor(.white)
                            .overlay(
                                Text("Outros")
                                    .foregroundColor(.black)
                            )
                            .overlay(
                                RoundedRectangle(cornerRadius: 30)
                                    .stroke(lineWidth: 1)
                                    .foregroundColor(.gray)
                            )
                    }
                }
                .padding([.top,.bottom])
                
                NavigationLink{
                    ApartmentDetails()
                } label: {
                    Image("ap")
                        .resizable()
                        .cornerRadius(20)
                        .overlay(
                            VStack(alignment: .leading){
                                Text("High Rise Apartment")
                                    .foregroundColor(.white)
                                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                                HStack{
                                    Image(systemName: "mappin.circle.fill")
                                        .foregroundColor(.white)
                                    Text("SALVATERRA")
                                        .foregroundColor(.white)
                                        .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                                }
                                Spacer()
                                
                                HStack{
                                    RoundedRectangle(cornerRadius: 30)
                                        .foregroundColor(.white.opacity(0.8))
                                        .frame(width: .infinity,height: 50)
                                        .overlay(
                                            Text("Take a look")
                                                .fontWeight(.bold)
                                                
                                        )
                                    RoundedRectangle(cornerRadius: 30)
                                        .foregroundColor(.white.opacity(0.8))
                                        .frame(width: 50,height: 50)
                                        .overlay(
                                            Image(systemName: "tray.full")
                                        )
                                    RoundedRectangle(cornerRadius: 30)
                                        .foregroundColor(.white.opacity(0.8))
                                        .frame(width: 50,height: 50)
                                        .overlay(
                                            Image(systemName: "bookmark")
                                        )
                                }
                           
                            }
                                .padding()
                        )
                }
                
            }
            .padding()
        }
        .navigationViewStyle(.stack)
    }
}

#Preview {
    ApartmentView()
}
