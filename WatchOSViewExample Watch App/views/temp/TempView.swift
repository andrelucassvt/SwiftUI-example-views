//
//  TempView.swift
//  WatchOSViewExample Watch App
//
//  Created by André  Lucas on 18/09/23.
//

import SwiftUI

struct TempView: View {
    var body: some View {
        VStack{
            HStack{
                RoundedRectangle(cornerRadius: 10)
                    .foregroundColor(.blue)
                    .overlay(
                        VStack(alignment: .leading){
                            HStack{
                                Text("Hoje")
                                    .font(.system(size: 10))
                                Spacer()
                                Image(systemName: "sun.min.fill")
                            }
                            Text("30º")
                                .fontWeight(.bold)
                                .font(.system(size: 30))
                            Text("Salvaterra")
                                .font(.system(size: 10))
                        }
                            .padding()
                    )
                RoundedRectangle(cornerRadius: 10)
                    .foregroundColor(.pink)
                    .overlay(
                        VStack(alignment: .leading){
                            HStack{
                                Text("Ontem")
                                    .font(.system(size: 10))
                                Spacer()
                                Image(systemName: "sun.min.fill")
                            }
                            Text("27º")
                                .fontWeight(.bold)
                                .font(.system(size: 30))
                            Text("Salvaterra")
                                .font(.system(size: 10))
                        }
                            .padding()
                    )
            }
            HStack{
                RoundedRectangle(cornerRadius: 10)
                    .foregroundColor(.orange)
                    .overlay(
                        VStack(alignment: .leading){
                            HStack{
                                Text("Hoje")
                                    .font(.system(size: 10))
                                Spacer()
                                Image(systemName: "sun.min.fill")
                            }
                            Text("33º")
                                .fontWeight(.bold)
                                .font(.system(size: 30))
                            Text("Belém")
                                .font(.system(size: 10))
                        }
                            .padding()
                    )
                RoundedRectangle(cornerRadius: 10)
                    .foregroundColor(.yellow)
                    .overlay(
                        VStack(alignment: .leading){
                            HStack{
                                Text("Ontem")
                                    .font(.system(size: 10))
                                Spacer()
                                Image(systemName: "sun.min.fill")
                            }
                            Text("30º")
                                .fontWeight(.bold)
                                .font(.system(size: 30))
                            Text("Belém")
                                .font(.system(size: 10))
                        }
                            .padding()
                    )
            }
        }
        .padding()
    }
}

struct TempView_Previews: PreviewProvider {
    static var previews: some View {
        TempView()
    }
}
