//
//  AwardsView.swift
//  lesson 406
//
//  Created by Garib Agaev on 22.09.2023.
//

import SwiftUI

struct AwardsView: View {
    var body: some View {
        NavigationStack {
            VStack {
                ScrollView {
                    GradientRectangles()
                        .frame(width: 200, height: 200)
                    PathView()
                        .frame(width: 200, height: 200)
                    figureView()
                        .frame(width: 200, height: 200)
                }
            }
            .navigationBarTitle("Awards")
        }
    }
}

struct AwardsView_Previews: PreviewProvider {
    static var previews: some View {
        AwardsView()
    }
}
