//
//  ContentView.swift
//  TrafficLight
//
//  Created by Yuriy on 08.12.2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color(.black)
                .ignoresSafeArea()
            VStack {
                Spacer()
                LightView(color: .red)
                LightView(color: .yellow)
                LightView(color: .green)
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
