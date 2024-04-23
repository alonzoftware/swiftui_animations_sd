//
//  ContentView.swift
//  patriotic_bird_lon
//
//  Created by MacBookAir on 22/4/24.
//

import SwiftUI

struct ContentView: View {
    @State private var leftWing = false
    @State private var rightWing = false
    @State private var birdBody = false
    @State private var animateShadow = false
    
    var body: some View {
        ZStack{
            Color(red: 0.0, green: 0.0, blue: 0.0)
                .edgesIgnoringSafeArea(.all)
            
            ZStack {
                //MARK: - LEFT WING
                Image("leftWing").resizable().frame(width: 150, height: 150)
                    .shadow(color: .red, radius: 1, x: 0, y: 3)
                    .rotationEffect(.degrees(leftWing ? -100 : 0), anchor: .bottomTrailing)
                    .offset(x: -55, y: leftWing ? -190 : 0)
                    .animation(Animation.easeInOut(duration: 1.0).repeatForever(autoreverses: true), value: leftWing)
                
                //MARK: - RIGHT WING
                Image("rightWing").resizable().frame(width: 150, height: 150)
                    .shadow(color: .green, radius: 1, x: 0, y: 3)
                    .rotationEffect(.degrees(rightWing ? 100 : 0), anchor: .bottomLeading)
                    .offset(x: 55, y: rightWing ? -190 : 0)
                    .animation(Animation.easeInOut(duration: 1.0).repeatForever(autoreverses: true),value: rightWing)
                
                //MARK: - BODY
                Image("body").resizable().frame(width: 100,height: 125)
                    .offset(y: -30)
                    .shadow(color: .yellow, radius: 1, x: 0, y: 0)
                    .offset(y: birdBody ? -50 : 75)
                    .animation(Animation.easeInOut(duration: 1.0).repeatForever(autoreverses: true), value: birdBody)
            }.shadow(color: .white, radius: animateShadow ? 1 : 4, x: 0, y: animateShadow ? 10 : 1)
                .animation(Animation.easeInOut(duration: 1.0).repeatForever(autoreverses: true), value: animateShadow)
            
                .onAppear() {
                    birdBody.toggle()
                    leftWing.toggle()
                    rightWing.toggle()
                    animateShadow.toggle()
                }
        }
    }
}

//#Preview {
//    ContentView()
//}
