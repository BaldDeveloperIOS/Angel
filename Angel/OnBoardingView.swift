//
//  OnBoardingView.swift
//  Angel
//
//  Created by chauveau on 13/05/2020.
//  Copyright © 2020 chauveau. All rights reserved.
//

import SwiftUI

struct OnBoardingView: View {
    @State var currentPageIndex = 0
    
    var subviews = [
        UIHostingController(rootView: Subview(imageString: "Logo")),
        UIHostingController(rootView: Subview(imageString: "pictoOne")),
        UIHostingController(rootView: Subview(imageString: "pictoTwo")),
        UIHostingController(rootView: Subview(imageString: "pictoThree"))
    ]
    
    /* let text1: [String] = ["Angel est une application française à destination des femmes qui souhaitent se préserver des violences. Que ces dernières soient présentes ou potentielles, il te sera possible d’alerter des contacts que tu auras définis comme étant de confiance pour les prévenir du fait que tu te trouves dans une situation de danger. Tu pourras également prévenir les services de secours, trouver un abri sûr proche de ta position, ou encore, remplir à ton tour le rôle d’ange gardien."]
     let text2: [String] = ["Pour profiter de l’ensemble des fonctionnalités de l’application, n’oublie pas d’accepter que ton téléphone soit géolocalisé, et d’autoriser les accès au micro et à l’appareil photo."]
     let text3: [String] = ["Choisis 3 de tes contacts les plus proches et invite-les à rejoindre l’application."]
     let text4: [String] = ["Grâce à l’interface prévu, préviens tes amis que tu es dans une situation délicate. Ils recevront une notification, pourront écouter le son de l’environnement dans lequel tu te trouves, accéder aux photos prises automatiquement par ton téléphone, obtenir ta position. Trouve l’abri sûr le plus proche de toi en utilisant la carte qui te géolocalise en temps réel."] */
    
    var titles = ["''Ton ange gardien digital''", "Etape 1", "Etape 2", "Etape 3"]
    
    var captions = ["", "Inscris-toi et remplis ton profil.", "Invite 3 personnes de confiance à jouer les anges gardiens !", "Alerte rapidement et discrètement tes anges gardiens en cas de danger !"]
    
    var texts: [String] = ["""
    Angel est une application française à destination des femmes qui souhaitent se préserver des violences.

    Que ces dernières soient présentes ou potentielles, il te sera possible d’alerter des contacts que tu auras définis comme étant de confiance pour les prévenir du fait que tu te trouves dans une situation de danger.

    """,
                           
                           "Pour profiter de l’ensemble des fonctionnalités de l’application, n’oublie pas d’accepter que ton téléphone soit géolocalisé, et d’autoriser l'accès au micro.",
                           
                           "Choisis 3 de tes contacts les plus proches et invite-les à rejoindre l’application.",
                           
                           "Ils recevront une notification, pourront écouter le son de l’environnement dans lequel tu te trouves, et obtenir ta position. Trouve l’abri sûr le plus proche en utilisant la carte qui te géolocalise en temps réel."]
    
    var body: some View {
        
        VStack {
            
            PageViewController(viewControllers: subviews, currentPageIndex: $currentPageIndex)
                .frame(width: 300, height: 300)
                .padding(.top, 50)
            VStack (alignment: .leading){
                Text(titles[currentPageIndex])
                    .font(.custom("Roboto-BoldCondensedItalic", size: 28))
                    .font(.title)
                    .foregroundColor(Color.black)
                    .padding(.bottom, 15)
                Text(captions[currentPageIndex])
                    .font(.custom("Roboto-Light", size: 28))
                    .font(.title)
                    .foregroundColor(Color.gray)
                    .padding(.bottom, 15)
                    .fixedSize(horizontal: false, vertical: true)
                Text(texts[currentPageIndex])
                    .font(.headline)
                    .foregroundColor(Color.gray)
                    .fixedSize(horizontal: false, vertical: true)
            } .padding(50)
            HStack (alignment: .bottom) {
                PageControl(numberOfPages: subviews.count, currentPageIndex: $currentPageIndex)
                Spacer()
                HStack {
                    Button(action: {
                        if self.currentPageIndex + 1 == self.subviews.count {
                            self.currentPageIndex = 0
                        } else {
                            self.currentPageIndex += 1
                        }
                    }) {
                        ButtonContentOne()
                    }
                    Button(action: {
                        if self.currentPageIndex + 1 == self.subviews.count {
                            self.currentPageIndex = 0
                        } else {
                            self.currentPageIndex += 1
                        }
                    }) {
                        ButtonContentTwo()
                    }
                }
            } .padding(.horizontal, 50.0)
                .padding(.bottom, 100)
        }
    }
}

struct ButtonContentOne: View {
    var body : some View {
        Image(systemName:"arrow.left")
            .padding()
            .frame(width: 60, height: 60)
            .background(Color.gray)
            .foregroundColor(.white)
            .font(.largeTitle)
            .cornerRadius(10)
    }
}

struct ButtonContentTwo: View {
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

/*Tu pourras également prévenir les services de secours, trouver un abri sûr proche de ta position, ou encore, remplir à ton tour le rôle d’ange gardien.*/
