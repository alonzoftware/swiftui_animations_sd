//
//  ContentView.swift
//  animating_circles_lon
//
//  Created by Rene Alonzo Choque Saire on 16/4/24.
//

import SwiftUI

struct ContentView: View {
    @State private var scaleInOut = false
    @State private var rotateInOut = false
    @State private var moveInOut = false
    var body: some View {
        //MARK: ZStack1
        ZStack {
            Rectangle()
                .edgesIgnoringSafeArea(.all)
                .foregroundColor(.black)
            ZStack {//MARK: ZStack2
                
                //MARK: - CIRCLES SET 1
                ZStack {
                    Circle().fill(LinearGradient(gradient: Gradient(colors:[.purple, .white]), startPoint: .top, endPoint: .bottom))
                        .frame(width: 120, height: 120)
                        .offset(y: moveInOut ? -60 : 0)
                    
                    Circle().fill(LinearGradient(gradient: Gradient(colors:[.purple, .white]), startPoint: .bottom, endPoint: .top))
                        .frame(width: 120, height: 120)
                        .offset(y: moveInOut ? 60 : 0)
                }.opacity(0.5)
                
                //MARK: - CIRCLES SET 2
                ZStack {
                    Circle().fill(LinearGradient(gradient: Gradient(colors:[ .purple, .white]), startPoint: .top, endPoint: .bottom))
                        .frame(width: 120, height: 120)
                        .offset(y: moveInOut ? -60 : 0)
                    
                    Circle().fill(LinearGradient(gradient: Gradient(colors:[.purple, .white]), startPoint: .bottom, endPoint: .top))
                        .frame(width: 120, height: 120)
                        .offset(y: moveInOut ? 60 : 0)
                }.opacity(0.5)
                    .rotationEffect(.degrees(60))
                
                //MARK: - CIRCLES SET 3
                ZStack {
                    Circle().fill(LinearGradient(gradient: Gradient(colors:[.purple, .white]), startPoint: .top, endPoint: .bottom))
                        .frame(width: 120, height: 120)
                        .offset(y: moveInOut ? -60 : 0)
                    
                    Circle().fill(LinearGradient(gradient: Gradient(colors:[.purple, .white]), startPoint: .bottom, endPoint: .top))
                        .frame(width: 120, height: 120)
                        .offset(y: moveInOut ? 60 : 0)
                }.opacity(0.5)
                    .rotationEffect(.degrees(120))
                
            }//MARK: ZStack2
            .rotationEffect(.degrees(rotateInOut ? 90 : 0))
                .scaleEffect(scaleInOut ? 1 : 1/4)
                .animation(Animation.easeInOut.repeatForever(autoreverses: true).speed(1/8), value: scaleInOut)
                .onAppear {
                    moveInOut.toggle()
                    scaleInOut.toggle()
                    rotateInOut.toggle()
                }
        }//MARK: ZStack1
        .preferredColorScheme(.dark)
    }
}

#Preview {
    ContentView()
}
