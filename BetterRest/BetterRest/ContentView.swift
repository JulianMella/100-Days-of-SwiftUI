//
//  ContentView.swift
//  BetterRest
//
//  Created by Julian on 26/03/2025.
//

import SwiftUI

struct ContentView: View {
    @State private var wakeUp = Date.now
    
    var body: some View {
        DatePicker("Please enter a date", selection: $wakeUp, in: Date.now..., displayedComponents: .hourAndMinute)
            .labelsHidden()
    }
}

#Preview {
    ContentView()
}
