//
//  BankView.swift
//  Views-example
//
//  Created by André  Lucas on 19/09/23.
//

import SwiftUI

struct BankView: View {
    var body: some View {
        VStack{
            HStack{
                Text("André Lucas")
                Spacer()
                Image(systemName: "person.circle.fill")
                    .font(.system(size: 40))
            }
            .padding()
            
            Text("BALANCE")
                .foregroundColor(.gray)
                .padding(.bottom,3)
            HStack{
                Text("35580.0")
                    .font(.title)
                Text("USD")
                    .foregroundColor(.gray)
                    .font(.title)
            }
            HStack{
                RoundedRectangle(cornerRadius: 30)
                    .frame(width: 130,height: 50)
                    .foregroundColor(.blue.opacity(0.3))
                    .overlay(
                        Text("Send")
                    )
                RoundedRectangle(cornerRadius: 30)
                    .frame(width: 130,height: 50)
                    .foregroundColor(.blue.opacity(0.3))
                    .overlay(
                        Text("Receive")
                    )
            }
            
            HStack{
                Text("My Cards")
                    .font(.title)
                    .foregroundColor(.gray)
                Spacer()
                Image(systemName: "plus.circle.fill")
                    .font(.system(size: 30))
            }
            .padding()
            
            
            ScrollView(.horizontal,showsIndicators: false){
                HStack{
                    RoundedRectangle(cornerRadius: 30)
                        .frame(width: 150,height: 150)
                        .foregroundColor(.purple.opacity(0.3))
                        .overlay(
                            VStack(alignment: .leading){
                                HStack{
                                    Text("Debit")
                                        .font(.system(size: 15))
                                        .fontWeight(.bold)
                                    Spacer()
                                    Image(systemName: "wave.3.right")
                                        .font(.system(size: 15))
                                }
                                .padding()
                                
                                Text("*** 000")
                                    .font(.system(size: 15))
                                    .padding(.top)
                                    .padding([.leading,.top])
                                Spacer()
                            }
                        )
                    RoundedRectangle(cornerRadius: 30)
                        .frame(width: 150,height: 150)
                        .foregroundColor(.orange.opacity(0.3))
                        .overlay(
                            VStack(alignment: .leading){
                                HStack{
                                    Text("Credit")
                                        .font(.system(size: 15))
                                        .fontWeight(.bold)
                                    Spacer()
                                    Image(systemName: "wave.3.right")
                                        .font(.system(size: 15))
                                }
                                .padding()
                                
                                Text("*** 000")
                                    .font(.system(size: 15))
                                    .padding(.top)
                                    .padding([.leading,.top])
                                Spacer()
                            }
                        )
                    RoundedRectangle(cornerRadius: 30)
                        .frame(width: 150,height: 150)
                        .foregroundColor(.green.opacity(0.3))
                        .overlay(
                            VStack(alignment: .leading){
                                HStack{
                                    Text("Debit")
                                        .font(.system(size: 15))
                                        .fontWeight(.bold)
                                    Spacer()
                                    Image(systemName: "wave.3.right")
                                        .font(.system(size: 15))
                                }
                                .padding()
                                
                                Text("*** 000")
                                    .font(.system(size: 15))
                                    .padding(.top)
                                    .padding([.leading,.top])
                                Spacer()
                            }
                        )
                }
            }
            .padding(.leading)
            
            
            HStack{
                Text("Transactions")
                    .font(.title)
                    .foregroundColor(.gray)
                Spacer()
                Text("View all")
                    .font(.subheadline)
                    .fontWeight(.bold)
                Image(systemName: "arrow.up.forward")
            }
            .padding()
            
            HStack{
                Circle()
                    .strokeBorder(.black,lineWidth: 1)
                    .frame(width: 50,height: 50)
                    .foregroundColor(.white)
                    .overlay(
                        Image(systemName: "car.fill")
                    )
                    .padding(.trailing,10)
                VStack(alignment: .leading){
                    Text("Uber")
                        .fontWeight(.bold)
                    Text("Outgoing transfer")
                        .foregroundColor(.gray)
                }
                Spacer()
                Text("-$20")
                    .fontWeight(.bold)

            }
            .padding([.bottom,.horizontal])
            HStack{
                Circle()
                    .strokeBorder(.black,lineWidth: 1)
                    .frame(width: 50,height: 50)
                    .foregroundColor(.white)
                    .overlay(
                        Image(systemName: "car.fill")
                    )
                    .padding(.trailing,10)
                VStack(alignment: .leading){
                    Text("Uber")
                        .fontWeight(.bold)
                    Text("Outgoing transfer")
                        .foregroundColor(.gray)
                }
                Spacer()
                Text("-$10")
                    .fontWeight(.bold)

            }
            .padding([.bottom,.horizontal])
            HStack{
                Circle()
                    .strokeBorder(.black,lineWidth: 1)
                    .frame(width: 50,height: 50)
                    .foregroundColor(.white)
                    .overlay(
                        Image(systemName: "arrow.down")
                    )
                    .padding(.trailing,10)
                VStack(alignment: .leading){
                    Text("Got payment")
                        .fontWeight(.bold)
                    Text("Incoming transfer")
                        .foregroundColor(.gray)
                }
                Spacer()
                Text("+$200")
                    .fontWeight(.bold)

            }
            .padding([.bottom,.horizontal])
        }
    }
}

struct BankView_Previews: PreviewProvider {
    static var previews: some View {
        BankView()
    }
}
