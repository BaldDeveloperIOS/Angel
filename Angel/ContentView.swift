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
        Text("Hello, World!")
            Text("Hello, World!")
            Text("Hello, World!")
            
            Circle()
            .frame(width: 50, height: 50)
                .foregroundColor(Color.red)
    }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
