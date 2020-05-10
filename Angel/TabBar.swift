//
//  TabBar.swift
//  Angel
//
//  Created by chauveau on 09/05/2020.
//  Copyright © 2020 chauveau. All rights reserved.
//

import SwiftUI

struct TabBar: View {
    @State var selected = 0
    
    var body: some View {
        VStack {
            
            Spacer()
            
            ZStack (alignment: .bottom){
                BottomBar(selectedItem: self.$selected)
                .padding()
                    .padding(.horizontal, 22)
                    .background(CurvedShape())
                
                Button(action: {
                    
                }) {
                    Image("Logo")
                        .renderingMode(.original)
                    .padding(30)
                    
                }.background(Color("ButtonColor"))
                    .clipShape(Circle())
                .overlay(Circle()
                    .stroke(Color.white, lineWidth: 5))
                    .offset(y: -15)
                .shadow(radius: 15)
            }
        }.background(Color("BackgroundColor"))
    }
}

struct TabBar_Previews: PreviewProvider {
    static var previews: some View {
        TabBar()
    }
}

// Structure de la tabBar
struct CurvedShape: View {
    var body: some View {
        Path { path in
            
            path.move(to: CGPoint(x: 0, y: 0))
                path.addLine(to: CGPoint(x: UIScreen.main.bounds.width, y: 0))
                path.addLine(to: CGPoint(x: UIScreen.main.bounds.width, y: 55))
                
                
                
                path.addLine(to: CGPoint(x: 0, y: 55))
                
            }.fill(Color.white)
            .rotationEffect(.init(degrees: 180))
            
        }
    }

// Eléments de la tabBar
struct BottomBar : View {
    @ Binding var selectedItem : Int
    
    var body : some View {
        HStack {
            
            VStack {
            Button(action: {
                self.selectedItem = 0
            }) {
                Image(systemName: "person.circle.fill")
            } .foregroundColor(self.selectedItem == 1 ? .black : Color("PurpleAngel"))
            .font(.title)
            }

            Spacer().frame(width: 280)
            
            VStack {
            Button(action: {
                self.selectedItem = 1
            }) {
                Image(systemName: "map")
            } .foregroundColor(self.selectedItem == 0 ? .black : Color("PurpleAngel"))
            .font(.title)
            }
        }
    }
}
