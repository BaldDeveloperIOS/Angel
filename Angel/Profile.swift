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
        NavigationView{
        VStack{
        HStack {
        Text("Ici c'est le profil")
        Image(systemName: "heart.fill")
            .foregroundColor(Color.pink)
            }
            ZStack{
            Circle()
                .frame(width: 210, height: 210)
                .overlay(
            Circle()
                .stroke(Color.purpleAngel,lineWidth: 5)
                       ).foregroundColor(Color.lightPurpleAngel)
                .shadow(color:.purpleAngel, radius: 5)
            Image("logoViolet")
                .resizable()
                .clipShape(Circle())
                .frame(width: 200, height: 200)
            NavigationLink(destination: AlertView() ){
                Text("Alerte")
                    .foregroundColor(Color.white)
                    .font(.system(size: 24))
                    .fontWeight(.semibold)
                    .shadow(color:.purpleAngel, radius: 20)
                    }
            }
            }
    }
    }
}

struct Profile_Previews: PreviewProvider {
    static var previews: some View {
        Profile()
    }
}
