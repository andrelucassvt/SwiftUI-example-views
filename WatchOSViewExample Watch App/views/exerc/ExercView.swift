//
//  ExercView.swift
//  WatchOSViewExample Watch App
//
//  Created by André  Lucas on 20/09/23.
//

import SwiftUI

struct ExercView: View {
    var body: some View {
        VStack{
            Text("Running")
            HStack{
                Image(systemName: "figure.walk")
                    .font(.system(size: 60))
                Text("9.40")
                    .font(.title)
                Text("km")
            }
            .padding(.bottom,20)
            Rectangle()
                .frame(height: 150)
                .foregroundColor(.green)
                .overlay(
                    VStack{
                        HStack{
                            VStack{
                                Text("Duration")
                                Text("28:00")
                            }
                            Spacer()
                            VStack{
                                Text("Calorias")
                                Text("730 kal")
                            }
                        }
                        HStack{
                            VStack{
                                Text("Duration")
                                Text("28:00")
                            }
                            Spacer()
                            VStack{
                                Text("Calorias")
                                Text("730 kal")
                            }
                        }
                        Spacer()
                    }
                        .padding()
                )
        }
        .padding(.top,100)
    }
}

struct ExercView_Previews: PreviewProvider {
    static var previews: some View {
        ExercView()
    }
}
