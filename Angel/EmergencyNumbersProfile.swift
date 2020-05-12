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
        // Stack Premier Bloc
        ZStack (alignment: .topLeading){
            
            RoundedRectangle(cornerRadius: 25)
                .foregroundColor(Color("ProfileColor"))
                .frame(width: 380, height: 160)
                .opacity(0.4)
                .shadow(color: .gray, radius: 5, x: 10, y: 10)
            
            VStack {
                
            Text("Numéros d'urgence")
                .font(.title)
                .offset(x: 20, y: 10)
            
            // Stack Bouton numéros d'urgence
                HStack {
                
                // Bouton ambulance
                Button(action: {
                    print("GG tu appuies sur le bouton 112 !")
                }) {
                    VStack {
                        Image("ambulance")
                            .foregroundColor(Color.black)
                            .background(Circle()
                                .frame(width: 90, height: 90)
                                .foregroundColor(Color.yellow)
                                .overlay(
                                    Circle()
                                        .stroke(Color.white, lineWidth: 4)
                                )
                        )
                    }
                } .padding(.trailing, 75)
                
                Button(action: {
                    print("GG tu appuies sur le bouton 114 !")
                }) {
                    VStack {
                        Image("sourd")
                            .foregroundColor(Color.black)
                            .background(Circle()
                                .frame(width: 90, height: 90)
                                .foregroundColor(Color.yellow)
                                .overlay(
                                    Circle()
                                        .stroke(Color.white, lineWidth: 4)
                                )
                        )
                    }
                }
                
                }.offset(x: 75, y: 22)
            }
        }
    }
}


struct EmergencyNumbersProfile_Previews: PreviewProvider {
    static var previews: some View {
        EmergencyNumbersProfile()
    }
}

/*
 // Stack rond+pictogramme 1
 ZStack {
 Circle()
 .shadow(color: .gray, radius: 5, x: 3, y: 3)
 .foregroundColor(Color.yellow)
 .frame(width: 90, height: 90)
 .overlay(
 Circle()
 .stroke(Color.white, lineWidth: 4)
 )
 VStack {
 Image("ambulance")
 Spacer().frame(height: 3)
 Text("112")
 .fontWeight(.bold)
 .font(.headline)
 }
 } */
// Stack rond+pictogramme 2
/* ZStack {
 Circle()
 .shadow(color: .gray, radius: 5, x: 3, y: 3)
 .foregroundColor(Color.yellow)
 .frame(width: 90, height: 90)
 .overlay(
 Circle()
 .stroke(Color.white, lineWidth: 4)
 )
 // Stack numéro d'urgence
 VStack {
 Image("sourd")
 Spacer().frame(height: 3)
 Text("114")
 .fontWeight(.bold)
 .font(.headline)
 }
 } */
