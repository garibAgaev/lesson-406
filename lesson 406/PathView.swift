//
//  PathView.swift
//  lesson 406
//
//  Created by Garib Agaev on 22.09.2023.
//

import SwiftUI

struct PathView: View {
    var body: some View {
        GeometryReader { proxy in
            let width = proxy.size.width
            let height = proxy.size.height
            let middleWidth = width / 2
            let sizeWidth = width * 0.1
            let sizeHeight = height * 0.1

            
            Path { path in
                path.move(to: CGPoint(x: middleWidth + sizeWidth, y: 0))
                path.addLine(to: CGPoint (x: width, y: height))
                path.addLine(to: CGPoint(x: 0, y: height))
                path.addLine(to: CGPoint(x: middleWidth - sizeWidth, y: 0))
            }
            .fill(Color(red: 0.4, green: 0.4, blue: 0.4))
            
            Path { path in
                path.move(to: CGPoint(x: middleWidth, y: 0))
                path.addLine(to: CGPoint (x: middleWidth, y: height))
            }
            .stroke(
                Color(.white),
                style: StrokeStyle(lineWidth: 3, dash: [height / sizeHeight])
            )
            
            Image(systemName: "car.fill")
                .resizable()
                .foregroundColor(.white)
                .scaleEffect(x: sizeWidth / 100, y: sizeHeight / 100)
                .offset(x: -width / 7.25)
        }
        .scaleEffect(0.7)
    }
}

struct PathView_Previews: PreviewProvider {
    static var previews: some View {
        PathView()
            .frame(width: 200, height: 200)
    }
}
