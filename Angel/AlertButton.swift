//
//  AlertButton.swift
//  Angel
//
//  Created by chauveau on 11/05/2020.
//  Copyright © 2020 chauveau. All rights reserved.
//

import SwiftUI

struct AlertButton: View {
    @State var shouldHide = false
    
    var body: some View {
        
        Button(action: {
            self.shouldHide = true
        }) {
            Image("Logo")
                .renderingMode(.original)
                .padding(30)
            
        }.background(Color("ButtonColor"))
            .clipShape(Circle())
            .overlay(Circle()
                .stroke(Color.white, lineWidth: 5))
            .offset(y: 295)
            .shadow(radius: 15)
            .opacity(shouldHide ? 0:1)
    }
}

struct AlertButton_Previews: PreviewProvider {
    static var previews: some View {
        AlertButton()
    }
}
