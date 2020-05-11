//
//  AlertButton.swift
//  Angel
//
//  Created by chauveau on 11/05/2020.
//  Copyright © 2020 chauveau. All rights reserved.
//

import SwiftUI

struct AlertButton: View {
    @State var shouldHide = false
    
    func send(){
        
        UNUserNotificationCenter.current().requestAuthorization(options: [.alert, .sound,.badge]){ (_, _) in
        }
        let content = UNMutableNotificationContent()
        content.title = "Alerte"
        content.body = "Ana Tolie vient d’activer le module d’alerte. Lance l’application pour lui venir en aide"
        
        let open = UNNotificationAction(identifier: "open", title: "Open", options: .foreground)
        let cancel = UNNotificationAction(identifier: "cancel", title: "Cancel", options: .destructive)
        
        let categories = UNNotificationCategory(identifier: "action", actions: [open,cancel], intentIdentifiers: [])
        
        UNUserNotificationCenter.current().setNotificationCategories([categories])
        content.categoryIdentifier = "action"
        
        let trigger = UNTimeIntervalNotificationTrigger(timeInterval: 5, repeats: false)
        let req = UNNotificationRequest(identifier: "req", content: content, trigger: trigger)
        UNUserNotificationCenter.current().add(req, withCompletionHandler: nil)
    }
    
    var body: some View {
        
        Button(action: {
           // self.shouldHide = true
            self.send()
        }) {
            Image("Logo")
                .renderingMode(.original)
                .padding(30)
            
        }.background(Color("ButtonColor"))
            .clipShape(Circle())
            .overlay(Circle()
                .stroke(Color.white, lineWidth: 5))
            .offset(y: 295)
            .shadow(radius: 15)
            .opacity(shouldHide ? 0:1)
    }
}

struct AlertButton_Previews: PreviewProvider {
    static var previews: some View {
        AlertButton()
    }
}
