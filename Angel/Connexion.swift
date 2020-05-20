//
//  Connexion.swift
//  Angel
//
//  Created by Zohra  Abada on 11/05/2020.
//  Copyright © 2020 chauveau. All rights reserved.
//

import SwiftUI

struct Connexion: View {
    @State private var login = ""
    @State private var password = ""
    @State private var isvalid = false
    
    var body: some View {
        
        VStack {
            
            Spacer()
                .padding()
            TextField("login", text: $login)
                
                .padding()
                .background(Color.white)
                .overlay(RoundedRectangle(cornerRadius: 18).stroke(Color.PurpleAngel, lineWidth: 2)
                    .foregroundColor(.clear))
                .padding(15)
            SecureField("password",text: $password){
                self.ispasswordvalid()
            } .padding()
                .background(Color.white)
                .overlay(RoundedRectangle(cornerRadius: 18).stroke(Color.PurpleAngel, lineWidth: 2)
                    .foregroundColor(.clear))
                .padding(15)
            if !isvalid {
                Text("").foregroundColor(.PurpleAngel)
                
                
                Text("MOT DE PASSE OUBLIÉ")
                    .foregroundColor(Color.PurpleAngel)
            }
            Spacer().frame(height:50)
            Spacer()
            Button(action: {
                
                
            })  {
                Text("Connexion").font(.title).bold()
                    .padding(12.0)
                    .frame(width: 357.0)
                    .background(Color.PurpleAngel)
                    .foregroundColor(.white)
                    .cornerRadius(20.0)
            }.padding().frame(width: 400.0, height: 50.0)
            Spacer()
                .padding()
            Spacer()
            Image("Logo")
                .resizable()
                .foregroundColor(.PurpleAngel)
                .frame(width:400.0, height:400.0 )
                .padding(1.0)
            
        }
        
        
    }
    
    func ispasswordvalid() {
        if self.password.count > 8 {
            self.isvalid = true
        }else{
            self.isvalid = false
        }
    }
    struct Connexion_Previews: PreviewProvider {
        static var previews: some View {
            Connexion()
        }
    }
}
