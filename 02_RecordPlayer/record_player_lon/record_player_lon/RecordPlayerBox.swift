//
//  RecordPlayerBox.swift
//  record_player_lon
//
//  Created by Rene Alonzo Choque Saire on 20/4/24.
//

import SwiftUI

struct RecordPlayerBox: View {
    var body: some View {
        ZStack {
            Rectangle().frame(width: 345, height: 345).cornerRadius(10)
            Image("woodGrain").resizable().frame(width: 325, height: 325)
                .shadow(color: .white, radius: 3, x: 0, y: 0)
        }
    }
}
//
//#Preview {
//    RecordPlayerBox()
//}
