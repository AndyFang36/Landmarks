//
//  Badge.swift
//  Landmarks
//
//  Created by Andy Fang on 09/02/2024.
//

import SwiftUI

struct Badge: View {
    var badgeSysbols: some View {
        ForEach(0..<8) { index in
            RotatedBadgeSymbol(angle: .degrees(Double(index) / 8) * 360)
        }.opacity(0.5)
    }
    
    var body: some View {
        ZStack {
            BadgeBackground()
            GeometryReader { geometry in
                badgeSysbols
                    .scaleEffect(1.0 / 4.0, anchor: .top)
                    .position(
                        x: geometry.size.width / 2.0,
                        y: geometry.size.height * (3.0 / 4.0)
                    )
            }
        }.scaledToFit()
    }
}

#Preview {
    Badge()
}
