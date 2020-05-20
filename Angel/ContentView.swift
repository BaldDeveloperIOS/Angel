//
//  ContentView.swift
//  Angel
//
//  Created by chauveau on 07/05/2020.
//  Copyright © 2020 chauveau. All rights reserved.
//

import SwiftUI

struct ContentView: View {  
    var body: some View {
        VStack {
            Text("Ici c'est la map")
        }
    }
        .padding()
        .frame(height: 4.0)
}
    

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


struct ExtractedView: View {
    var body: some View {
        Text("Mon profil")
            .font(.largeTitle)
            .fontWeight(.semibold)
            .foregroundColor(.PulpeAngel)
            .padding(.bottom,20)
    }
}
}
