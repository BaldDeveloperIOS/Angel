//
//  ButtonAlert.swift
//  Angel
//
//  Created by helenepetitjean on 20/05/2020.
//  Copyright © 2020 chauveau. All rights reserved.
//

import SwiftUI

struct ButtonAlert: View {
    var body: some View {
        ZStack{
            Circle()
                .frame(width: 110, height: 110)
                .overlay(
                    Circle()
                        .stroke(Color.purpleAngel,lineWidth: 5)
            ).foregroundColor(Color.lightPurpleAngel)
                .shadow(color:.purpleAngel, radius: 5)
            Image("logoViolet")
                .renderingMode(.original)
                .resizable()
                .clipShape(Circle())
                .frame(width: 100, height: 100)
            Text("Alerte")
                .foregroundColor(Color.white)
                .font(.system(size: 24))
                .fontWeight(.semibold)
                .shadow(color:.purpleAngel, radius: 20)
        }
    }
}
struct ButtonAlert_Previews: PreviewProvider {
    static var previews: some View {
        ButtonAlert()
    }
}
