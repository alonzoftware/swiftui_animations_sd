//
//  RecordPlayer.swift
//  record_player_lon
//
//  Created by MacBookAir on 18/4/24.
//

import SwiftUI

struct RecordPlayerView: View {
    
    @Binding var degrees: Double
    @Binding var shouldAnimate: Bool
    
    var body: some View {
        Image("record").resizable().frame(width: 275, height: 275)
            .shadow(color: .gray, radius: 1, x: 0, y: 0)
            .rotationEffect(Angle.degrees(degrees))
            .animation(Animation.linear(duration: shouldAnimate ? 60 : 0).delay(1.5),value: shouldAnimate)
    }
}

struct RecordPlayerView_Previews: PreviewProvider {
    static var previews: some View {
        RecordPlayerView(degrees: .constant(2.0), shouldAnimate: .constant(true))
            .previewLayout(.sizeThatFits).padding()
    }
}
