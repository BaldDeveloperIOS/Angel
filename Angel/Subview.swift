//
//  Subview.swift
//  Angel
//
//  Created by chauveau on 12/05/2020.
//  Copyright © 2020 chauveau. All rights reserved.
//

import SwiftUI

struct Subview: View {
    var imageString : String
    
    var body: some View {
        VStack {
           Image(imageString).resizable()
           .frame(width: 250, height: 250)
            
            
            
            
            
            /*
            VStack {
        
            Text("''Ton ange gardien digital''")
               .font(.custom("Roboto-Light", size: 28))
            }
            
            Image("inscription").resizable()
            .frame(width: 60, height: 60)
            .rotationEffect(.degrees(-90))
            
            
           Image("pictoOne").resizable()
            .frame(width: 100, height: 100)
            .rotationEffect(.degrees(-90))
            */
            
            
        }
    }
}

struct Subview_Previews: PreviewProvider {
    static var previews: some View {
        Subview(imageString: "Logo")
    }
}
