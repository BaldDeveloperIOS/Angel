//
//  TabBarTest.swift
//  Angel
//
//  Created by chauveau on 11/05/2020.
//  Copyright © 2020 chauveau. All rights reserved.
//

import SwiftUI

struct TabBarTest: View {
    @State var show = false
    @State var shouldHide = false
    
    var body: some View {
        
        ZStack (alignment: .bottom){
            NavigationView{
                ContentView()
            }
            ZStack {
            BottomBarTest()
            Notifications()
            // AlertButton()
            }
            ZStack{
                NavigationLink(destination: DetailTab(show: self.$show), isActive: self.$show)
                {
                    Text("")
                }
            }
        }.onAppear{
            NotificationCenter.default.addObserver(forName: NSNotification.Name("DetailTab"), object: nil, queue: .main){
                (_) in
                
                self.show = true
            }
        }
    }
}

    // Eléments de la tabBar
    struct BottomBarTest : View {
        
        var body : some View {
            TabView  {
                
                MergedProfile()
                    .tabItem  {
                        Image(systemName: "person.crop.circle.fill")
                            .font(.title)
                        Text("Profil")
                }
                
                ContentView()
                    .tabItem {
                        Text("")
                }
                
                Map()
                    .tabItem {
                        Image(systemName: "map")
                            .font(.title)
                        Text("Carte")
                }
            }.accentColor(Color("PurpleAngel"))
        }
    }
    
struct TabBarTest_Previews: PreviewProvider {
    static var previews: some View {
        TabBarTest()
    }
}
