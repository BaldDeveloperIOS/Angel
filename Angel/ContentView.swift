//
//  ContentView.swift
//  Angel
//
//  Created by chauveau on 07/05/2020.
//  Copyright © 2020 chauveau. All rights reserved.
//

import SwiftUI

extension Color{ static let PulpeAngel = Color(red:88/255,green:86/255,blue:214/255)}
struct ContentView: View {
    @State var username: String=""
    @State var userFastname: String=""
    @State var Email:String=""
    @State var passWord: String=""
    @State var confirmPassWord: String=""
    @State var addContacts: String=""
    @State var addPhoto=true
    @State var activateDarkColor=false
    var body: some View {
        
        VStack{

            ExtractedView()
        TextField("Nom",text:$username)
            .padding()
            .frame(width:350, height: 40)
            .background(Color.white)
            .overlay(RoundedRectangle(cornerRadius:10).stroke(Color.PulpeAngel,lineWidth:2)
                .foregroundColor(.clear))
            .padding(.bottom,20)
            
        TextField("Prénom",text:$userFastname)
            .padding()
            .frame(width:350, height: 40)
            .background(Color.white)
            .overlay(RoundedRectangle(cornerRadius:10).stroke(Color.PulpeAngel,lineWidth:2)
                .foregroundColor(.clear))
            .padding(.bottom,20)
        TextField("E_mail",text:$Email)
            .padding()
            .frame(width:350, height: 40)
            .background(Color.white)
            .overlay(RoundedRectangle(cornerRadius:10).stroke(Color.PulpeAngel,lineWidth:2)
                .foregroundColor(.clear))
            .padding(.bottom,20)
        TextField("Mot de passe",text:$passWord)
            .padding()
            .frame(width:350, height: 40)
            .background(Color.white)
            .overlay(RoundedRectangle(cornerRadius:10).stroke(Color.PulpeAngel,lineWidth:2)
                .foregroundColor(.clear))
            .padding(.bottom,20)
        TextField("confirmer mon mot de passe",text:$confirmPassWord)
            .padding()
            .frame(width:350, height: 40)
            .background(Color.white)
            .overlay(RoundedRectangle(cornerRadius:10).stroke(Color.PulpeAngel,lineWidth:2)
                .foregroundColor(.clear))
            .padding(.bottom,20)
            HStack{
       Text("Ajouter une photo")
            .font(.headline)
            .fontWeight(.light)
            .foregroundColor(.PulpeAngel)
            
        .frame(width:160)
                Button(action:{print("VALIDER")})
                                {
                                    Text("Ajouter ")
                                        .font(.headline)
                                        .fontWeight(.light)
                                        .foregroundColor(Color.white)
                    }
                        .padding()
                        .frame(width:140, height: 40)
                        .background(LinearGradient(gradient:Gradient(colors:[.white,Color("PulpeAngel")]),startPoint:.top,endPoint: .bottom))
                        .font(.title)
                        .foregroundColor(.white)

                        .cornerRadius(10)
            }.padding(.bottom,10)
             
            
            HStack{
                
                   Text("Activer le mode sombre")
                           .font(.headline)
                    .fontWeight(.light)
                           .foregroundColor(.PulpeAngel)
                           .padding()
                .frame(width:250, height:40)
                Toggle("",isOn: $activateDarkColor)
                 .frame(width:80, height:40)
                               
                    }.padding()
       
             Button(action:{print("Button taper")})
             {
                Text("AJOUTER MES CONTACTS")
                .font(.headline)
                    .foregroundColor(.white)
                    .padding()
                    
                    .frame(width:350, height: 40)
                    .foregroundColor(.white)
                    .background(LinearGradient(gradient:Gradient(colors:[.white,Color("PulpeAngel")]),startPoint:.top,endPoint: .bottom))
                    .cornerRadius(10.0)
             }.padding(.bottom,10)
            Button(action:{print("Button taper")})
            {
            Text("VALIDER")
                .font(.headline)
                .foregroundColor(.white)
                .padding()
                
                .frame(width:350, height: 40)
                .foregroundColor(.white)
                .background(LinearGradient(gradient:Gradient(colors:[.white,Color("PulpeAngel")]),startPoint:.top,endPoint: .bottom))
                .cornerRadius(10.0)
        }
    }
        .padding()
        .frame(height: 4.0)
}
    

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
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
}
