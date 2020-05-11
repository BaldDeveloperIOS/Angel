//
//  Profile.swift
//  Angel
//
//  Created by chauveau on 10/05/2020.
//  Copyright © 2020 chauveau. All rights reserved.
//

import SwiftUI

struct Profile: View {
    var body: some View {
        HStack {
        Text("Ici c'est le profil")
        Image(systemName: "heart.fill")
            .foregroundColor(Color.pink)
    }
    }
}

struct Profile_Previews: PreviewProvider {
    static var previews: some View {
        Profile()
    }
}
