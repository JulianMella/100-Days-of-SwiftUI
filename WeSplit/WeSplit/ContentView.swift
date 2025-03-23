//
//  ContentView.swift
//  WeSplit
//
//  Created by Julian on 23/03/2025.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        NavigationStack {
            Form {
                Section {
                    Text("Within section 1")
                }
            }
            .navigationTitle("SwiftUI")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
    
}

#Preview {
    ContentView()
}
