//
//  ContentView.swift
//  record_player_lon
//
//  Created by MacBookAir on 18/4/24.
//

import SwiftUI

struct ContentView: View {
    @State private var rotateRecord = false
    @State private var rotateArm = false
    @State private var shouldAnimate = false
    @State private var degrees = 0.0
    var body: some View {
        ZStack {
            RecordPlayerView(degrees: $degrees, shouldAnimate: $shouldAnimate)
        }
    }
}

#Preview {
    ContentView()
}
