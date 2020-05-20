//
//  TabBarTest.swift
//  Angel
//
//  Created by chauveau on 10/05/2020.
//  Copyright © 2020 chauveau. All rights reserved.
//

import SwiftUI

struct TabBar: View {
    @State var show = false
    @State var shouldHide = false

    var body: some View {
        
        ZStack (alignment: .bottom){
            NavigationView{

              ContentView()
            }
            BottomBar()

            
            ZStack{
                NavigationLink(destination: DetailTab(show: self.$show), isActive: self.$show)
                {
                    Text("")
                }
                
                Button(action: {

                    self.shouldHide = true

                    self.send()
                }) {
                    Image("Logo")
                        .renderingMode(.original)
                        .padding(30)
                    
                }.background(Color("ButtonColor"))
                    .clipShape(Circle())
                    .overlay(Circle()
                        .stroke(Color.white, lineWidth: 5))
                    .offset(y: 0)
                    .shadow(radius: 15)

                    .opacity(shouldHide ? 0:1)

            }
        }.onAppear{
            NotificationCenter.default.addObserver(forName: NSNotification.Name("DetailTab"), object: nil, queue: .main){
                (_) in
                
                self.show = true
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
    
    struct TabBar_Previews: PreviewProvider {
        static var previews: some View {
            TabBar()
        }
    }
}


// Eléments de la tabBar
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
            
            ContentView()
                .tabItem {
                    Image(systemName: "map")
                        .font(.title)
                    Text("Carte")
            }
        }.accentColor(Color("PurpleAngel"))
    }
}


struct DetailTab: View {
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
