//
//  ButtonUrgence.swift
//  Angel
//
//  Created by helenepetitjean on 20/05/2020.
//  Copyright © 2020 chauveau. All rights reserved.
//

import SwiftUI

struct ButtonUrgence: View {
    var body: some View {
        ZStack{
            Circle()
                .frame(width: 110, height: 110)
                .overlay(
                    Circle()
                        .stroke(Color.redAngel,lineWidth: 5)
            ).foregroundColor(Color.lightRedAngel)
                .shadow(color:.redAngel, radius: 5)
            Image("logoRouge")
                .renderingMode(.original)
                .resizable()
                .clipShape(Circle())
                .frame(width: 100, height: 100)
            Text("Urgence")
                .foregroundColor(Color.white)
                .font(.system(size: 24))
                .fontWeight(.semibold)
                .shadow(color:.redAngel, radius: 20)
        }
    }
}

struct ButtonUrgence_Previews: PreviewProvider {
    static var previews: some View {
        ButtonUrgence()
    }
}
