//
//  LightView.swift
//  TrafficLight
//
//  Created by Yuriy on 08.12.2022.
//

import SwiftUI

struct LightView: View {
    
    let color: Color
    let opacity: Double
    let shadowOpacity: Double
    
    var body: some View {
        Circle()
            .foregroundColor(color).opacity(opacity)
            .frame(width: 120)
            .overlay(Circle().stroke(color, lineWidth: 3))
            .padding(8)
            .shadow(color: color.opacity(shadowOpacity), radius: 30)
    }
}

struct LightView_Previews: PreviewProvider {
    static var previews: some View {
        LightView(color: .green, opacity: 0.3, shadowOpacity: 0.9)
    }
}
