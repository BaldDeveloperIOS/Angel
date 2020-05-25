//
//  Profile.swift
//  Tests
//
//  Created by chauveau on 12/05/2020.
//  Copyright © 2020 chauveau. All rights reserved.
//

import SwiftUI

struct Profile: View {
    var body: some View {
        
        ScrollView(.vertical, showsIndicators: false) {
            VStack {
                EmergencyProfil()
                UserProfile()
                KeeperProfile()
                BraceletProfile()
                ButtonsProfile()
                Spacer(minLength: 180)
             //   TabBar()
            }.padding(.top)
                //.navigationBarTitle("Profil", displayMode: .inline)
                
    }
}
}

struct Profile_Previews: PreviewProvider {
    static var previews: some View {
        Profile()
    }
}
