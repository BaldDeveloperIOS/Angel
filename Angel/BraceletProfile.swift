//
//  BraceletProfile.swift
//  Angel
//
//  Created by chauveau on 11/05/2020.
//  Copyright © 2020 chauveau. All rights reserved.
//

import SwiftUI

struct BraceletProfile: View {
    var body: some View {
        ZStack {
            
            Rectangle()
                .foregroundColor(.clear)
                .background(LinearGradient(gradient:  Gradient(colors: [.white, Color("PurpleAngel")]), startPoint: .top, endPoint: .bottom))
                .cornerRadius(25)
                .frame(width: 380, height: 160)
                .opacity(0.8)
                .shadow(color: .gray, radius: 5, x: 10, y: 10)
            
            HStack {
                VStack (alignment: .leading){
                    Text("Connecter mon")
                    Text("bracelet d'alerte")
                    Text("à l'application")
                }.font(.system(size: 23))
                
                Spacer().frame(width: 40)
                
                Button(action: {
                    print("GG tu appuies sur le bouton pour connecter le BT !")
                }) {
                    Image("bluetooth")
                        .foregroundColor(Color.black)
                        .background(Circle()
                            .frame(width: 90, height: 90)
                            .shadow(color: .gray, radius: 5, x: 3, y: 3)
                            .foregroundColor(Color.pink)
                            .overlay(
                                Circle()
                                    .stroke(Color.white, lineWidth: 4)
                            )
                    )
                }
                
            }
        }
    }
}


struct BraceletProfile_Previews: PreviewProvider {
    static var previews: some View {
        BraceletProfile()
    }
}
