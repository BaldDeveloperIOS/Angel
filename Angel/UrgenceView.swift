//
//  UrgenceView.swift
//  Tests
//
//  Created by helenepetitjean on 10/05/2020.
//  Copyright © 2020 helenepetitjean. All rights reserved.
//

import SwiftUI

struct UrgenceView: View {
    @State var animate = true
    var body: some View {
        VStack{
        ZStack{
           // Color.lightRedAngel.edgesIgnoringSafeArea(.all)
            Circle()
                .fill(Color.redAngel.opacity(0.15))
                .frame(width: 900, height: 900)
                .scaleEffect(self.animate ? 0 : 1)
            Circle()
                .fill(Color.redAngel.opacity(0.15))
                .frame(width: 800, height: 800)
                .scaleEffect(self.animate ? 0 : 1)
            Circle()
                .fill(Color.redAngel.opacity(0.15))
                .frame(width: 700, height: 700)
                .scaleEffect(self.animate ? 0 : 1)
            Circle()
                .fill(Color.redAngel.opacity(0.25))
                .frame(width: 600, height: 600)
                .scaleEffect(self.animate ? 0 : 1)
            Circle()
                .fill(Color.redAngel.opacity(0.35))
                .frame(width: 500, height: 500)
                .scaleEffect(self.animate ? 0 : 1)
            Circle()
                .fill(Color.redAngel.opacity(0.45))
                .frame(width: 400, height: 400)
                .scaleEffect(self.animate ? 0 : 1)
            Circle()
                .fill(Color.redAngel.opacity(0.55))
                .frame(width: 300, height:300)
                .scaleEffect(self.animate ? 0 : 1)
            ZStack{
               Circle()
                    .fill(Color.redAngel)
                    .frame(width: 150, height: 150)
                    .scaleEffect(self.animate ? 0 : 1)
                NavigationLink(destination: Profile() ){
                    Text("Stop")
                        .foregroundColor(Color.white)
                        .font(.system(size: 80))
                        .fontWeight(.semibold)
            }
        
            }
          VStack{
              HStack(spacing:120){
              ButtonAlert()
              ButtonTest()
              }
              ButtonUrgence()
          }.offset(x: 0, y: 220)
          
    }
        }.onAppear{
            self.animate.toggle()
        }.animation(Animation.linear(duration: 2).repeatForever(autoreverses: true))
                .navigationBarTitle("Je suis en DANGER", displayMode: .inline)
       

    }
    }

struct UrgenceView_Previews: PreviewProvider {
    static var previews: some View {
        UrgenceView()
    }
}
