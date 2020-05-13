//
//  ContentView.swift
//  Angel
//
//  Created by chauveau on 07/05/2020.
//  Copyright © 2020 chauveau. All rights reserved.
//

import SwiftUI
let lightGreyColor=Color(red:239/255,green:243/255,blue:244/255,opacity: 1.0)
extension Color{ static let PulpeAngel = Color(red:88/255,green:86/255,blue:214/255)}
struct ContentView: View {
    @State var username: String=""
    @State var userFastname: String=""
    @State var Email:String=""
    @State var passWord: String=""
    @State var confirmPassWord: String=""
    @State var addContacts: String=""
    @State var addPhoto=true
    @State var addScreenShot=true
    var body: some View {
        
        VStack{
            ExtractedView()
        TextField("Nom",text:$username)
            .padding()
            .background(lightGreyColor)
            .cornerRadius(35.0)
            .padding(.bottom,20)
            
        TextField("Prénom",text:$userFastname)
            .padding()
            .background(lightGreyColor)
            .cornerRadius(35.0)
            .padding(.bottom,20)
        TextField("E_mail",text:$Email)
            .padding()
            .background(lightGreyColor)
            .cornerRadius(35.0)
            .padding(.bottom,20)
        TextField("Mot de passe",text:$passWord)
            .padding()
            .background(lightGreyColor)
            .cornerRadius(35.0)
            .padding(.bottom,20)
        TextField("confirmer mon mot de passe",text:$confirmPassWord)
            .padding()
            .background(lightGreyColor)
            .cornerRadius(35.0)
            .padding(.bottom,20)
            HStack{
        Text("Ajouter une photo")
                .font(.headline)
                .foregroundColor(.black)
                .padding()
                    Button(action:{print("Button taper")})
                                {
                                   Text("")
                                       .font(.headline)
                                       .foregroundColor(.black)
                                       .padding()
                                       .frame(width:150, height:40)
                                       .background(Color.PulpeAngel)
                                       .cornerRadius(35.0)
                               }.padding()
        
            }
            HStack{
                   Text("Ajouter screenshot")
                           .font(.headline)
                           .foregroundColor(.black)
                           .padding()
                               Button(action:{print("Button taper")})
                                           {
                                              Text("")
                                                  .font(.headline)
                                                  .foregroundColor(.black)
                                                  .padding()
                                                  .frame(width:150, height:40)
                                                  .background(Color.PulpeAngel)
                                                  .cornerRadius(35.0)
                                          }.padding()
                   
                       }
          
             Button(action:{print("Button taper")})
             {
                Text("AJOUTER MES CONTACTS")
                    .font(.headline)
                    .foregroundColor(.black)
                    .padding()
                    .frame(width:350, height:40)
                    .background(Color.PulpeAngel)
                    .cornerRadius(35.0)
            }.padding()
            Button(action:{print("Button taper")})
            {
            Text("VALIDER")
                .font(.headline)
                .foregroundColor(.black)
                .padding()
                .frame(width: 350, height: 40)
                .background(Color.PulpeAngel)
                .cornerRadius(35.0)
        }
    }
    .padding()
}
    

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
}

struct ExtractedView: View {
    var body: some View {
        Text("Mon profil")
            .font(.largeTitle)
            .fontWeight(.semibold)
            .foregroundColor(.PulpeAngel)
            .padding(.bottom,20)
    }
}
