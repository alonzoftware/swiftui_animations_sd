
import SwiftUI

@main
struct ElevatorApp: App {
    @StateObject private var appData = DataModel()
    
    var body: some Scene {
        WindowGroup {
            ContentView(appData: appData)
        }
    }
}
