//
//  TabBar.swift
//  Angel
//
//  Created by helenepetitjean on 20/05/2020.
//  Copyright © 2020 chauveau. All rights reserved.
//

import SwiftUI

struct TabBar: View {
    @State var show = false
    var body: some View {
        NavigationView{
            ZStack (alignment: .bottom){
                BottomBar()
               
                ButtonAngel(audioRecorder: AudioRecorder())
            
            }
        }
        }
    }


struct TabBar_Previews: PreviewProvider {
    static var previews: some View {
        TabBar()
    }
}


struct BottomBar : View {
    var body : some View {
        TabView  {
            
            Profile()
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
        }.accentColor(Color.purpleAngel)
    }
}




