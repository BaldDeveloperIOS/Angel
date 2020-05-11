//
//  Notifications.swift
//  Angel
//
//  Created by chauveau on 11/05/2020.
//  Copyright © 2020 chauveau. All rights reserved.
//

import SwiftUI

struct Notifications: View {
    @State var show = false
    
    var body: some View {
        
        ZStack{
                NavigationLink(destination: DetailTab(show: self.$show), isActive: self.$show)
                {
                    Text("")
                }
                AlertButton()
        }.onAppear{
            NotificationCenter.default.addObserver(forName: NSNotification.Name("DetailTab"), object: nil, queue: .main){
                (_) in
                
                self.show = true
            }
        }
    }
}

struct Notifications_Previews: PreviewProvider {
    static var previews: some View {
        Notifications()
    }
}

struct DetailTabTest: View {
    @Binding var show : Bool
    
    var body: some View{
        ContentView()
            .navigationBarTitle("Ana Tolie Alerte", displayMode: .inline)
            .navigationBarBackButtonHidden(true)
            .navigationBarItems(leading:
                Button (action: {
                    
                    self.show = false
                    
                }, label: {
                    Image(systemName: "arrow.left")
                })
        )
    }
}
