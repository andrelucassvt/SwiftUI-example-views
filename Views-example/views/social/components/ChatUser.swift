//
//  ChatUser.swift
//  Views-example
//
//  Created by André  Lucas on 17/09/23.
//

import SwiftUI

struct ChatUser: View {
    var body: some View {
        HStack{
            Circle()
                .frame(width: 70, height: 70)
            VStack(alignment: .leading){
                Text("Nome user")
                    .fontWeight(.bold)
                    .padding(.bottom,1)
                Text("Digitando...")
                Divider()
            }
        }
        .padding()
    }
}

struct ChatUser_Previews: PreviewProvider {
    static var previews: some View {
        ChatUser()
    }
}
