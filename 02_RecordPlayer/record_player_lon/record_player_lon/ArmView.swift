//
//  ArmView.swift
//  record_player_lon
//
//  Created by Rene Alonzo Choque Saire on 20/4/24.
//

import SwiftUI

struct ArmView: View {
    @Binding var rotateArm: Bool
    
    var body: some View {
        Image("playerArm").resizable().aspectRatio(contentMode: .fit)
            .frame(width: 150, height: 150)
            .shadow(color: .gray, radius: 2, x: 0, y: 0)
            .rotationEffect(Angle.degrees(-35), anchor: .topTrailing)
            .rotationEffect(Angle.degrees(rotateArm ? 8 : 0), anchor: .topTrailing)
            .animation(Animation.linear(duration: 2),value: rotateArm)
            .offset(x: 70, y: -250)
    }
}

//#Preview {
//    ArmView()
//}
