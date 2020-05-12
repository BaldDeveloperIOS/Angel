//
//  KeeperProfile.swift
//  Angel
//
//  Created by chauveau on 11/05/2020.
//  Copyright © 2020 chauveau. All rights reserved.
//

import SwiftUI

struct KeeperProfile: View {
    var body: some View {
        
        ZStack {
            
            RoundedRectangle(cornerRadius: 25)
                .foregroundColor(Color("ProfileColor"))
                .frame(width: 380, height: 330)
                .opacity(0.4)
                .shadow(color: .gray, radius: 5, x: 10, y: 10)
            
            VStack {
                
                // Stack Keepers
                VStack  (alignment: .leading){
                    Text("Mes gardiens")
                        .font(.title)
                    Spacer().frame(height: 0)
                    // Stack photos Keepers
                    HStack {
                        Image("KeeperOne").resizable()
                            .frame(width: 90, height: 90)
                            .clipShape(Circle())
                            .padding(.trailing, 10)
                        Image("KeeperTwo").resizable()
                            .frame(width: 90, height: 90)
                            .clipShape(Circle())
                            .padding(.trailing, 10)
                        Image("KeeperThree").resizable()
                            .frame(width: 90, height: 90)
                            .clipShape(Circle())
                    }.padding()
                }
                Spacer().frame(height: 0)
                // Stack Protégés
                VStack  (alignment: .leading){
                    Text("Mes protégés")
                        .font(.title)
                    Spacer().frame(height: 0)
                    // Stack photos Protégés
                    HStack {
                        Image("protégéOne").resizable()
                            .frame(width: 90, height: 90)
                            .clipShape(Circle())
                            .padding(.trailing, 10)
                        Image("protégéTwo").resizable()
                            .frame(width: 90, height: 90)
                            .clipShape(Circle())
                            .padding(.trailing, 10)
                        ZStack {
                        Circle()
                            .foregroundColor(.gray)
                            .frame(width: 90, height: 90)
                        Image(systemName: "plus")
                            .font(.title)
                            .foregroundColor(.white)
                        }
                    }.padding()
                }
            }
        }
    }
}


struct KeeperProfile_Previews: PreviewProvider {
    static var previews: some View {
        KeeperProfile()
    }
}
