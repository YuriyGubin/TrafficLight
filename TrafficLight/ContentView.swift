//
//  ContentView.swift
//  TrafficLight
//
//  Created by Yuriy on 08.12.2022.
//

import SwiftUI

enum LightColor {
    case red
    case yellow
    case green
}

struct ContentView: View {
    
    @State private var buttonTitle = "START"
    
    @State private var redOpacity = 0.3
    @State private var yellowOpacity = 0.3
    @State private var greenOpacity = 0.3
    
    @State private var lightColor = LightColor.red
    
    private let isOn = 1.0
    private let isOff = 0.3
    
    var body: some View {
        
        ZStack {
            Color(.black)
                .ignoresSafeArea()
            
            VStack {
                Spacer()
                
                LightView(
                    color: .red,
                    opacity: redOpacity,
                    shadowOpacity: redOpacity
                )
                LightView(
                    color: .yellow,
                    opacity: yellowOpacity,
                    shadowOpacity: yellowOpacity
                )
                LightView(
                    color: .green,
                    opacity: greenOpacity,
                    shadowOpacity: greenOpacity
                )
                
                Spacer()
                
                Button(action: switchLightColor) {
                    Text(buttonTitle)
                        .foregroundColor(.white)
                        .font(.largeTitle)
                }
                .frame(width: 140, height: 40)
                .padding()
                .background(Color.blue)
                .clipShape(Capsule())
                .overlay(Capsule().stroke(Color.white, lineWidth: 3))
                
                Spacer()
            }
        }
    }
    
    private func switchLightColor() {
        if buttonTitle == "START" {
            buttonTitle = "NEXT"
        }
        
        switch lightColor {
        case .red:
            redOpacity = isOn
            greenOpacity = isOff
            lightColor = .yellow
        case .yellow:
            yellowOpacity = isOn
            redOpacity = isOff
            lightColor = .green
        case .green:
            greenOpacity = isOn
            yellowOpacity = isOff
            lightColor = .red
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
