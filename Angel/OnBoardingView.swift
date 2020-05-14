//
//  OnBoardingView.swift
//  Angel
//
//  Created by chauveau on 13/05/2020.
//  Copyright © 2020 chauveau. All rights reserved.
//

import SwiftUI

struct OnBoardingView: View {
    var subviews = [
        UIHostingController(rootView: Subview(imageString: "Logo")),
        UIHostingController(rootView: Subview(imageString: "pictoOne")),
        UIHostingController(rootView: Subview(imageString: "pictoTwo")),
        UIHostingController(rootView: Subview(imageString: "pictoThree"))
    ]
    
    @State var currentPageIndex = 0
    var titles = [ "Ton ange gardien digital", "Etape 1", "Etape 2", "Etape 3"]
    var texts = ["Ceci est le texte 1", "Ceci est le texte 2", "Ceci est le texte 3", "Ceci est le texte 4",]
    
    var body: some View {
        
        VStack {
            PageViewController(viewControllers: subviews, currentPageIndex: $currentPageIndex)
                .frame(height: 300)
            Text(titles[currentPageIndex])
                .font(.title)
            Text(texts[currentPageIndex])
            .font(.subheadline)
            Button(action: {
                if self.currentPageIndex + 1 == self.subviews.count {
                    self.currentPageIndex = 0
                } else {
                    self.currentPageIndex += 1
                }
            }) {
                ButtonContent()
            }
            PageControl(numberOfPages: subviews.count, currentPageIndex: $currentPageIndex)
        }
    }
}

struct ButtonContent: View {
    var body: some View {
        Image(systemName:"arrow.right")
            .padding()
            .frame(width: 60, height: 60)
            .background(LinearGradient(gradient:  Gradient(colors: [.white, Color("PurpleAngel")]), startPoint: .top, endPoint: .bottom))
            .foregroundColor(.white)
            .font(.largeTitle)
            .cornerRadius(10)
    }
}

struct OnBoardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnBoardingView()
    }
}
