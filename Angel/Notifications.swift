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
