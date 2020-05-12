//
//  MergedProfile.swift
//  Angel
//
//  Created by chauveau on 12/05/2020.
//  Copyright © 2020 chauveau. All rights reserved.
//

import SwiftUI

struct MergedProfile: View {
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            VStack {
                EmergencyNumbersProfile()
                UserProfile()
                KeeperProfile()
                BraceletProfile()
                
                ProfileButtons()
            }
        }
    }
}

struct MergedProfile_Previews: PreviewProvider {
    static var previews: some View {
        MergedProfile()
    }
}
