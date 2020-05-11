//
//  Profile.swift
//  Angel
//
//  Created by chauveau on 10/05/2020.
//  Copyright © 2020 chauveau. All rights reserved.
//

import SwiftUI

struct Profile: View {
    var body: some View {
        
        // Stack Globale
        VStack {
            
            // Stack Premier Bloc
            ZStack (alignment: .topLeading){
            
        RoundedRectangle(cornerRadius: 25)
            .foregroundColor(Color("ProfileColor"))
            .frame(width: 380, height: 160)
            .opacity(0.4)
            .shadow(color: .gray, radius: 5, x: 10, y: 10)
                Text("Numéros d'urgence")
                    .font(.title)
                    .offset(x: 20, y: 10)
                // Stack ronds jaunes
                HStack (alignment: .center){
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
                        // Stack numéro d'urgence
                                VStack {
                                Image("ambulance")
                                Spacer().frame(height: 3)
                                    Text("112")
                                        .fontWeight(.bold)
                                        .font(.headline)
                        }
                    }
                    
                    Spacer().frame(width: 35)
                        // Stack rond+pictogramme 2
                        ZStack {
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
                    }
            } .offset(x: 90, y: 52)
            }
        
            
            
        }
    }
}

struct Profile_Previews: PreviewProvider {
    static var previews: some View {
        Profile()
    }
}
