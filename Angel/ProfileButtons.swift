//
//  ProfileButtons.swift
//  Angel
//
//  Created by chauveau on 12/05/2020.
//  Copyright © 2020 chauveau. All rights reserved.
//

import SwiftUI

struct ProfileButtons: View {
    var body: some View {
        VStack {
            
            HStack {
            Button(action: {
                print("GG!!!!!!!")
            }) {
                Text("Inviter des amis")
            }
            .padding()
            .frame(width: 380)
            .background(LinearGradient(gradient:  Gradient(colors: [.white, Color("PurpleAngel")]), startPoint: .top, endPoint: .bottom))
            .foregroundColor(.white)
            .font(.title)
            .cornerRadius(50)
            }.padding([.top, .leading, .trailing], 20.0)
                .padding(.bottom,10)
                
            
            HStack {
            Button(action: {
                print("GG!!!!!!!")
            }) {
                Text("Historique des alertes")
            }
            .padding()
            .frame(width: 380)
            .background(LinearGradient(gradient:  Gradient(colors: [.white, Color("PurpleAngel")]), startPoint: .top, endPoint: .bottom))
            .foregroundColor(.white)
            .font(.title)
            .cornerRadius(50)
            }.padding([.leading, .trailing], 20.0)
                .padding(.bottom,10)
            HStack {
            Button(action: {
                print("GG!!!!!!!")
            }) {
                Text("Guide d'utilisation")
            }
            .padding()
            .frame(width: 380)
            .background(LinearGradient(gradient:  Gradient(colors: [.white, Color("PurpleAngel")]), startPoint: .top, endPoint: .bottom))
            .foregroundColor(.white)
            .font(.title)
            .cornerRadius(50)
            }.padding([.leading, .trailing], 20.0)
                .padding(.bottom,10)
            
            HStack {
            Button(action: {
                print("GG!!!!!!!")
            }) {
                Text("Paramètres de l'application")
            }
            .padding()
            .frame(width: 380)
            .background(LinearGradient(gradient:  Gradient(colors: [.white, Color("PurpleAngel")]), startPoint: .top, endPoint: .bottom))
            .foregroundColor(.white)
            .font(.title)
            .cornerRadius(50)
            }.padding([.leading, .trailing], 20.0)
            .padding(.bottom,10)
            
        }
    }
}

struct ProfileButtons_Previews: PreviewProvider {
    static var previews: some View {
        ProfileButtons()
    }
}
