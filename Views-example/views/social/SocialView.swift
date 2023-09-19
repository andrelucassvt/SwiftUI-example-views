//
//  SocialView.swift
//  Views-example
//
//  Created by André  Lucas on 26/08/23.
//

import SwiftUI

struct SocialView: View {
    var body: some View {
        NavigationView{
            VStack{
                ScrollView{
                    HStack{
                        RoundedRectangle(cornerRadius: 10)
                            .foregroundColor(.gray.opacity(0.7))
                            .overlay(
                                HStack{
                                    Image(systemName: "magnifyingglass")
                                        .foregroundColor(.white)
                                    Text("Pesquisar")
                                        .foregroundColor(.white)
                                    Spacer()
                                }
                                    .padding()
                            )
                            .frame(height: 45)
                        Button{
                            
                        } label: {
                            Image(systemName: "line.3.horizontal.decrease")
                                .padding()
                        }
                        
                    }
                    .padding()
                    
                    HStack{
                        Button{
                            
                        } label: {
                            Text("Listas de transmissão")
                        }
                        Spacer()
                        Button{
                            
                        } label: {
                            Text("Novo grupo")
                        }
                    }
                    .padding()
                    
                    Divider()
                    
                    HStack{
                        Image(systemName: "archivebox.fill")
                            .foregroundColor(.gray)
                        Text("Arquivadas")
                            .padding(.leading)
                        
                        Spacer()
                    }
                    .padding()
                    Divider()
                    ChatUser()
                    ChatUser()
                    ChatUser()
                    ChatUser()
                    ChatUser()
                  
                }

            }
            .toolbar{
                ToolbarItem(placement: .navigationBarLeading) {
                    Button {
    
                    } label: {
                        Text("Editar")
                    }
                }
                ToolbarItemGroup{
                    Button {

                    } label: {
                        Image(systemName: "camera")
                    }
                    Button {

                    } label: {
                        Image(systemName: "square.and.pencil")
                    }
                }
                
            }
            .navigationTitle("Conversas")
        }
    }
}

struct SocialView_Previews: PreviewProvider {
    static var previews: some View {
        SocialView()
    }
}
