//
//  SettingsView.swift
//  present_dismiss_lon
//
//  Created by MacBookAir on 25/4/24.
//

import SwiftUI

struct SettingsView: View {
    @State private var selection: Int = 1
    @State private var setDate = Date()
    @State private var timeZoneOverride = true
    @State private var volume: Double = 25.0
    @Binding var show: Bool
    
    var body: some View {
        ZStack {
            NavigationView {
                List {
                    //MARK: - DATE PICKER
                    Section(header: Text("Date and Time")) {
                        DatePicker(selection: $setDate, label: {
                            Image(systemName: "calendar.circle")
                        }).foregroundColor(.black)
                    }.listRowBackground(Color(UIColor.orange))
                    
                    //MARK: - TIME ZONE TOGGLE
                    Section(header: Text("Time Zone Override")) {
                        Toggle(isOn: $timeZoneOverride, label: {
                            HStack {
                                Image(systemName: "timer")
                                Text("Override")
                            }.foregroundColor(.black)
                        })
                    }.listRowBackground(Color(UIColor.orange))
                    
                    //MARK: - ALARM VOLUME
                    Section(header: Text("Alarm Volume")) {
                        Text("Volume \(String(format: "%.0f", volume as Double)) Decibels").foregroundColor(.black)
                        Slider(value: $volume, in: 0...100) { _ in
                            //code to run when the slider is moved
                        }
                    }.listRowBackground(Color(UIColor.orange))
                    
                    //MARK: - REPEAT ALARM
                    Section(header: Text("Repeat Alarm")) {
                        Picker(selection: $selection, label: Text("Repeat Alarm:")) {
                            Text("No Repeat").tag(1)
                            Text("Repeat Once").tag(2)
                            Text("Repeat Twice").tag(3)
                        }.foregroundColor(.black)
                    }.listRowBackground(Color(UIColor.orange))
                    
                    //MARK: - SAVE BUTTON
                    Button(action: {
                        withAnimation(.easeInOut(duration: 1.0)) {
                            self.show = false
                        }
                    }) {
                        HStack {
                            Spacer()
                            Text("Save")
                            Spacer()
                        }
                    }.listRowBackground(Color.green)
                }.foregroundColor(.white)
                .listStyle(InsetGroupedListStyle())
            }.frame(width: 350, height: 625)
            .cornerRadius(20)
            
            Text("Settings").offset(y: -250)
                .foregroundColor(.black)
                .font(.title)
        }
    }
}

//struct SettingsView_Previews: PreviewProvider {
//    static var previews: some View {
//        SettingsView(show: .constant(false))
//    }
//}


//#Preview {
//    SettingsView()
//}
