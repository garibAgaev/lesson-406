//
//  figureView.swift
//  lesson 406
//
//  Created by Garib Agaev on 22.09.2023.
//

import SwiftUI

struct figureView: View {
    var body: some View {
        GeometryReader { proxy in
            let width = proxy.size.width
            let height = proxy.size.height
            let a1 = width
            let a2 = a1 / 2
            let a3 = a1 / 3
            let a32 = a3 / 2
            let a33 = a3 / 3
            let b1 = height
            let b2 = b1 / 2
            let b3 = b1 / 3
            
            Path { path in
                path.move(to: CGPoint(x: 0, y: 0))
                path.addLine(to: CGPoint(x: a3, y: 0))
                path.addQuadCurve(
                    to: CGPoint(x: a2 - a33 / 2, y: b3),
                    control: CGPoint(x: a3 - a33 / 2, y: b1 / 3)
                )
                path.addLine(to: CGPoint(x: a2 - a33 / 2, y: b3 / 2))
                path.addLine(to: CGPoint(x: a2 - a33 / 4, y: b2 / 2))
                path.addLine(to: CGPoint(x: a2 + a33 / 4, y: b2 / 2))
                path.addLine(to: CGPoint(x: a2 + a33 / 2, y: b3 / 2))
                path.addLine(to: CGPoint(x: a2 + a33 / 2, y: b3))
                path.addQuadCurve(
                    to: CGPoint(x: 2 * a3, y: 0),
                    control: CGPoint(x: 2 * a3 + a33 / 2, y: b3)
                )
                path.addLine(to: CGPoint(x: a1, y: 0))
                path.addQuadCurve(
                    to: CGPoint(x: a1 - a32, y: 2 * b3),
                    control: CGPoint(x: 2 * a3 + a33 / 2, y: b3)
                )
                path.addQuadCurve(
                    to: CGPoint(x: a2, y: b1),
                    control: CGPoint(x: a2 + a33 / 2, y: b2)
                )
                path.addQuadCurve(
                    to: CGPoint(x: a32, y: 2 * b3),
                    control: CGPoint(x: a2 - a33 / 2, y: b2)
                )
                path.addQuadCurve(
                    to: CGPoint(x: 0, y: 0),
                    control: CGPoint(x: a3 - a33 / 2, y: b3)
                )
            }
        }
        .scaleEffect(0.7)
    }
}

struct figureView_Previews: PreviewProvider {
    static var previews: some View {
        figureView()
            .frame(width: 300, height: 300)
            .background(Color.blue)
    }
}
