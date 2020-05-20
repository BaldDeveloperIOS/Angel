//
//  EmergencyNumbersProfile.swift
//  Angel
//
//  Created by chauveau on 11/05/2020.
//  Copyright © 2020 chauveau. All rights reserved.
//

import SwiftUI

struct EmergencyNumbersProfile: View {
    var body: some View {
        VStack{
            ZStack {
                RoundedRectangle(cornerRadius: 25)
                    .foregroundColor(Color("ProfileColor"))
                    .frame(width: 360, height: 160)
                    .opacity(0.4)
                    .shadow(color: .gray, radius: 5, x: 10, y: 10)
                VStack{
                    Text("Numéros d'urgence")
                        .font(.custom("Roboto-Light", size: 25))
                        .font(.title)
                        .padding(.bottom)
                        .padding(.trailing, 95)
                    HStack (spacing:90){
                        Button(action: {
                            print("GG tu appuies sur le bouton 112 !")
                        }) {
                            Image("ambulance")
                                .renderingMode(.original)
                                .background(Circle()
                                    .frame(width: 90, height: 90)
                                    .foregroundColor(Color.yellow)
                                    .overlay(
                                        Circle()
                                            .stroke(Color.white, lineWidth: 4)
                                ))}
                        Button(action: {
                            print("GG tu appuies sur le bouton 114 !")
                        }) {
                            Image("sourd")
                                .renderingMode(.original)
                                .background(Circle()
                                    .frame(width: 90, height: 90)
                                    .foregroundColor(Color.yellow)
                                    .overlay(
                                        Circle()
                                            .stroke(Color.white, lineWidth: 4)
                                ))}
                    }.padding(.bottom, 20.0)
                }
            }
        }
    }
}

struct EmergencyNumbersProfile_Previews: PreviewProvider {
    static var previews: some View {
        EmergencyNumbersProfile()
    }
}
