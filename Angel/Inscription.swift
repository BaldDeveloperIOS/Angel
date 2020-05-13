//
//  Inscription.swift
//  Angel
//
//  Created by Zohra  Abada on 11/05/2020.
//  Copyright © 2020 chauveau. All rights reserved.
//

import SwiftUI
extension Color {
      static let PurpleAngel = Color(red: 88/255, green: 86/255, blue: 214/255)
  }
struct Inscription: View {
  
    
    @State var pseudo: String
    @State var email: String
    @State var password: String
    
    var body: some View {
       
        VStack {
       
            HStack {
                 
               TextField("pseudo", text: $pseudo)
               .padding()
               .background(Color.white)
               .overlay(RoundedRectangle(cornerRadius: 18).stroke(Color.PurpleAngel, lineWidth: 2)
                   .foregroundColor(.clear)
                   )
               .padding(15)
            } 
             HStack {
            TextField("Email", text: $email)
                    .padding()
                .background(Color.white)
                .overlay(RoundedRectangle(cornerRadius: 18).stroke(Color.PurpleAngel, lineWidth: 2)
            .foregroundColor(.clear))
            .padding(15)
               
            }
             HStack {
            TextField("Mot de passe", text: $password)
         .padding()
                      .background(Color.white)
                      .overlay(RoundedRectangle(cornerRadius: 18).stroke(Color.PurpleAngel, lineWidth: 2)
                          .foregroundColor(.clear)
                          )
                      .padding(15)
            }
            Spacer().frame(height: 61.0)
            
            Button(action: {

                
            })  {
                Text("Valider").font(.title).bold()
                    .padding(12.0)
                    .frame(width: 357.0)
                    .background(Color.PurpleAngel)
                .foregroundColor(.white)
                    .cornerRadius(20.0)
            }
     Image("Logo")
        .resizable()
        .foregroundColor(.PurpleAngel)
        .frame(width:400.0, height:400.0 )
        .padding()
        .contrast(/*@START_MENU_TOKEN@*/1.0/*@END_MENU_TOKEN@*/)
     
        }
        .padding(0.0)
    
        }
    }

struct Inscription_Previews: PreviewProvider {
    static var previews: some View {
        Inscription(pseudo: "", email: "", password: "")
    }
}
