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
    
    var body: some View {
        PageViewController(viewControllers: subviews)
            .frame(height: 300)
    }
}

struct OnBoardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnBoardingView()
    }
}
