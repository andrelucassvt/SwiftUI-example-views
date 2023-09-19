//
//  MapView.swift
//  Views-example
//
//  Created by André  Lucas on 24/08/23.
//

import SwiftUI
import MapKit

struct MapView: View {
    @State private var region = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 51.507222, longitude: -0.1275), span: MKCoordinateSpan(latitudeDelta: 0.5, longitudeDelta: 0.5))
    var body: some View {
        ZStack {
            Map(coordinateRegion: $region)
            VStack{
                RoundedRectangle(cornerRadius: 30)
                    .foregroundColor(.white)
                    .frame(height: 60)
                    .shadow(color: Color.black.opacity(0.2), radius: 4, x: 0, y: 2)
                    .overlay(
                        HStack{
                            Image(systemName: "magnifyingglass")
                                .foregroundColor(.gray)
                            Text("Search")
                                .foregroundColor(.gray)
                            Spacer()
                            Image(systemName: "mic.fill")
                                .foregroundColor(.green)
                        }
                        .padding(.horizontal)
                    )
                    .padding()
                
                Spacer()
                ZStack{
                    RoundedRectangle(cornerRadius: 40)
                        .frame(height: 80)
                        .foregroundColor(.blue.opacity(0.5))
                        .overlay(
                            HStack{
                                Circle()
                                    .frame(width: 50,height: 50)
                                    .foregroundColor(.green)
                                    .overlay(
                                        Image(systemName: "house.fill")
                                            .foregroundColor(.white)
                                            .font(.title)
                                    )
                                Circle()
                                    .frame(width: 50,height: 50)
                                    .foregroundColor(.clear)
                                    .overlay(
                                        Image(systemName: "bell.fill")
                                            .foregroundColor(.white)
                                            .font(.title)
                                    )
                                Spacer()
                                Circle()
                                    .frame(width: 50,height: 50)
                                    .foregroundColor(.clear)
                                    .overlay(
                                        Image(systemName: "star.fill")
                                            .foregroundColor(.white)
                                            .font(.title)
                                    )
                                Circle()
                                    .frame(width: 50,height: 50)
                                    .foregroundColor(.clear)
                                    .overlay(
                                        Image(systemName: "gearshape.fill")
                                            .foregroundColor(.white)
                                            .font(.title)
                                    )
                            }
                                .padding()
                        )
                        .padding(.horizontal)
                    Circle()
                        .frame(width: 80,height: 80)
                        .foregroundColor(.white)
                        .overlay(
                            Circle()
                                .frame(width: 70,height: 70)
                                .foregroundColor(.green)
                                .overlay(
                                    Image(systemName: "xmark")
                                        .font(.title)
                                        .foregroundColor(.white)
                                )
                        )
                        .padding(.bottom,60)
                }
            }
        }
    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView()
    }
}
