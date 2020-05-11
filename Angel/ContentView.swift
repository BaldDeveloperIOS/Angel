//
//  ContentView.swift
//  Angel
//
//  Created by chauveau on 07/05/2020.
//  Copyright © 2020 chauveau. All rights reserved.
//

import SwiftUI
let lightGreyColor=Color(red:239/255,green:243/255,blue:244/255,opacity: 1.0)
struct ContentView: View {
    @State var username: String=""
    @State var userFastname: String=""
    @State var Email:String=""
    @State var passWord: String=""
    @State var confirmPassWord: String=""
    @State var addContacts: String=""

    var body: some View {
        
        VStack{
            ExtractedView()
        TextField("username",text:$username)
            .padding()
            .background(lightGreyColor)
            .cornerRadius(35.0)
            .padding(.bottom,20)
            
        TextField("Fastname",text:$userFastname)
            .padding()
            .background(lightGreyColor)
            .cornerRadius(35.0)
            .padding(.bottom,20)
        TextField("Email",text:$Email)
            .padding()
            .background(lightGreyColor)
            .cornerRadius(35.0)
            .padding(.bottom,20)
        TextField("passWord",text:$passWord)
            .padding()
            .background(lightGreyColor)
            .cornerRadius(35.0)
            .padding(.bottom,20)
        TextField("confirmPassWord",text:$confirmPassWord)
            .padding()
            .background(lightGreyColor)
            .cornerRadius(35.0)
            .padding(.bottom,20)
            Text("Valider")
                .font(.headline)
                .foregroundColor(.black)
                .padding()
                .frame(width:150, height:40)
                .background(Color.blue)
                .cornerRadius(15.0)
                .padding(.bottom,20)
            Text("Valider")
                .font(.headline)
                .foregroundColor(.black)
                .padding()
                .frame(width:150,height:40)
                .background(Color.blue)
                .cornerRadius(15.0)
                .padding(.bottom,20)
        Text("addContacts")
            
                .font(.headline)
                .foregroundColor(.black)
                .padding()
                .frame(width:350, height:40)
                .background(Color.blue)
                .cornerRadius(35.0)
                .padding(.bottom,20)
            
            
            Text("Valider")
                .font(.headline)
                .foregroundColor(.black)
                .padding()
                .frame(width: 350, height: 40)
                .background(Color.blue)
                .cornerRadius(35.0)
            

            
        
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
            .foregroundColor(.blue)
            .padding(.bottom,20)
    }
}
