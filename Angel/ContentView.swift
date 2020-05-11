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
    @State var AddContacts: String=""
    var body: some View {
        
        VStack{
        Text("Mon profil")
            .font(.largeTitle)
            .fontWeight(.semibold)
            .foregroundColor(.blue)
            .padding(.bottom,20)
        TextField("username",text:$username)
            .padding()
            .background(lightGreyColor)
            .cornerRadius(5.0)
            .padding(.bottom,20)
            
        TextField("Fastname",text:$userFastname)
            .padding()
            .background(lightGreyColor)
            .cornerRadius(5.0)
            .padding(.bottom,20)
        TextField("Email",text:$Email)
            .padding()
            .background(lightGreyColor)
            .cornerRadius(5.0)
            .padding(.bottom,20)
        TextField("passWord",text:$passWord)
            .padding()
            .background(lightGreyColor)
            .cornerRadius(5.0)
            .padding(.bottom,20)
        TextField("confirmPassWord",text:$confirmPassWord)
            .padding()
            .background(lightGreyColor)
            .cornerRadius(5.0)
            .padding(.bottom,20)
        TextField("AddContacts",text:$AddContacts)
            .padding()
            .background(lightGreyColor)
            .cornerRadius(5.0)
            .padding(.bottom,20)

            
        
        }
        
}
    

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
}
