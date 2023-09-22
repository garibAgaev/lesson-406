//
//  MainView.swift
//  lesson 406
//
//  Created by Garib Agaev on 22.09.2023.
//

import SwiftUI

struct MainView: View {
    @State private var awardIsShowing = false
    var body: some View {
        VStack {
            Button(action: buttonAction) {
                HStack {
                    Text(awardIsShowing ? "Hide Award": "Show Award")
                    Spacer()
                    Image(systemName: "chevron.up.square")
                        .scaleEffect(awardIsShowing ? 2 : 1)
                        .rotationEffect(.degrees(awardIsShowing ? 0 : 180))
                }
            }
            Spacer()
            figureView()
                .frame(width: 500, height: 250)
                .offset(y: awardIsShowing ? 0 : -UIScreen.main.bounds.height)
                .rotationEffect(.degrees(awardIsShowing ? 0 : -360))
                .scaleEffect(awardIsShowing ? CGSize(width: 1, height: 1) : CGSize(width: 0, height: 0))
                .animation(.spring(), value: awardIsShowing)
            Spacer()
        }
        .font (.headline)
        .padding ()
    }
    
    private func buttonAction() {
        withAnimation {
            awardIsShowing.toggle()
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
