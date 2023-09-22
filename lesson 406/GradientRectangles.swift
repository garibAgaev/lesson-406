//
//  GradientRectangles.swift
//  lesson 406
//
//  Created by Garib Agaev on 22.09.2023.
//

import SwiftUI

struct GradientRectangles: View {
    var body: some View {
        GeometryReader { proxy in
            ZStack {
                ForEach(0..<3) { iteration in
                    Rectangle()
                        .fill(
                            LinearGradient(
                                colors: [.green, .blue],
                                startPoint: UnitPoint(x: 0, y: 1),
                                endPoint: UnitPoint(x: 1, y: 0)
                            )
                        )
                        .rotationEffect(.degrees(Double(iteration) * 60))
                }
                Image(systemName: "airplane")
                    .resizable()
                    .rotationEffect(.degrees(-90))
                    .opacity(0.5)
            }
        }
        .scaleEffect(0.7)
    }
}

struct GradientRectangles_Previews: PreviewProvider {
    static var previews: some View {
        GradientRectangles()
            .frame(width: 200, height: 200)
    }
}
