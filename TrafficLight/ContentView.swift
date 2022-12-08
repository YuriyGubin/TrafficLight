//
//  ContentView.swift
//  TrafficLight
//
//  Created by Yuriy on 08.12.2022.
//

import SwiftUI

struct ContentView: View {
    
    @State private var tapCounter = 0
    var body: some View {
        ZStack {
            Color(.black)
                .ignoresSafeArea()
            VStack {
                Spacer()
                LightView(color: .red, opacity: 0.5)
                LightView(color: .yellow, opacity: 0.5)
                LightView(color: .green, opacity: 0.5)
                Spacer()
                Button(action: switchColor) {
                    Text("START")
                        .foregroundColor(.white)
                        .font(.largeTitle)
                        .padding(EdgeInsets(
                            top: 16,
                            leading: 32,
                            bottom: 16,
                            trailing: 32
                        ))
                        .background(Color.blue)
                        .clipShape(Capsule())
                        .overlay(Capsule().stroke(Color.white, lineWidth: 3))
                }
                Spacer()
            }
        }
    }
    
    func switchColor() {
        
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
