//
//  AlertView.swift
//  Angel
//
//  Created by helenepetitjean on 20/05/2020.
//  Copyright © 2020 chauveau. All rights reserved.
//

import SwiftUI

struct AlertView: View {
    @ObservedObject var audioRecorder: AudioRecorder
    @State var showView = false
    @State var animate = true
   
    var body: some View {
        ZStack{
          
            ButtonPulsatingChangeView()
            Button(action: {
                self.audioRecorder.stopRecording()
                print("*** record stop ***")
                DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
                    self.showView = true
                }
            }) {
                HStack{
                    Text("Stop")
                        .foregroundColor(Color.white)
                        .font(.system(size: 80))
                        .fontWeight(.semibold).shadow(radius: 6)
                }
            }
            //MARK: - NAVIGATION LINKS
            NavigationLink(destination: AlertActiveView(), isActive: $showView) {
                EmptyView()
            }
        }
    }
}

struct AlertView_Previews: PreviewProvider {
    static var previews: some View {
        AlertView(audioRecorder: AudioRecorder())
    }
}
