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
        
        Rectangle()
            .foregroundColor(.clear)
            .background(LinearGradient(gradient:  Gradient(colors: [.white, Color("PurpleAngel")]), startPoint: .top, endPoint: .bottom))
            .cornerRadius(25)
            .frame(width: 380, height: 160)
            .opacity(0.8)
            .shadow(color: .gray, radius: 5, x: 10, y: 10)
        
        
    }
}

struct UserProfile_Previews: PreviewProvider {
    static var previews: some View {
        UserProfile()
    }
}
