//
//  UserProfile.swift
//  Angel
//
//  Created by chauveau on 11/05/2020.
//  Copyright © 2020 chauveau. All rights reserved.
//

import SwiftUI

struct UserProfile: View {
    var body: some View {
        VStack {
            ZStack (alignment: .leading){
                
                Rectangle()
                    .foregroundColor(.clear)
                    .background(LinearGradient(gradient:  Gradient(colors: [.white, Color("PurpleAngel")]), startPoint: .top, endPoint: .bottom))
                    .cornerRadius(25)
                    .frame(width: 380, height: 160)
                    .opacity(0.8)
                    .shadow(color: .gray, radius: 5, x: 10, y: 10)
                
                HStack (alignment: .top){
                    Image("portrait").resizable()
                        .frame(width: 120, height: 120)
                        .clipShape(Circle())
                        .padding()
                    
                    VStack (alignment: .leading){
                        Text("Ana Tolie")
                            .font(.system(size: 35))
                            .fontWeight(.bold)
                            .offset(y: 10)
                        
                        Spacer().frame(height: 45)
                        
                        VStack (alignment: .leading){
                            Text("06 17 34 52 49")
                                .font(.system(size: 20))
                            Text("anatolie@gmail.com")
                                .font(.system(size: 20))
                        }
                    }
                }
            }
        }
    }
}

struct UserProfile_Previews: PreviewProvider {
    static var previews: some View {
        UserProfile()
    }
}
