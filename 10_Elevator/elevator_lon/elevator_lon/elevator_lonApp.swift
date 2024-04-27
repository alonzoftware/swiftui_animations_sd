//
//  elevator_lonApp.swift
//  elevator_lon
//
//  Created by MacBookAir on 27/4/24.
//

import SwiftUI

@main
struct elevator_lonApp: App {
    @StateObject private var appData = DataModel()
    var body: some Scene {
        WindowGroup {
            ContentView(appData: appData)
        }
    }
}
