//
//  TempView.swift
//  WatchOSViewExample Watch App
//
//  Created by André  Lucas on 18/09/23.
//

import SwiftUI

struct TempMenuView: View {
    @State var showTemp = false
    var body: some View {
        NavigationView{
            VStack{
                Button {
                    showTemp = true
                } label: {
                    Circle()
                        .frame(width: 70,height: 70)
                        .foregroundColor(.blue)
                        .overlay(
                            Image(systemName: "cloud.sun.fill")
                                .font(.title)
                        )
                }
                .buttonStyle(.plain)
                .sheet(isPresented: $showTemp){
                    TempView()
                }

                HStack{
                    Circle()
                        .frame(width: 70,height: 70)
                        .foregroundColor(.orange)
                        .overlay(
                            Image(systemName: "phone.fill")
                                .font(.title)
                        )
                        .padding(.trailing)
                    Circle()
                        .frame(width: 70,height: 70)
                        .foregroundColor(.green)
                        .overlay(
                            Image(systemName: "message.fill")
                                .font(.title)
                        )
                }
                .padding()
            }
        }
    }
}

struct TempMenuView_Previews: PreviewProvider {
    static var previews: some View {
        TempMenuView()
    }
}
