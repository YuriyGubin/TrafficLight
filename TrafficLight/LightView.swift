//
//  LightView.swift
//  TrafficLight
//
//  Created by Yuriy on 08.12.2022.
//

import SwiftUI

struct LightView: View {
    
    let color: Color
    
    var body: some View {
        Circle()
            .foregroundColor(color).opacity(0.2)
            .frame(width: 120)
            .padding(8)
            
    }
}

struct LightView_Previews: PreviewProvider {
    static var previews: some View {
        LightView(color: .green)
    }
}
