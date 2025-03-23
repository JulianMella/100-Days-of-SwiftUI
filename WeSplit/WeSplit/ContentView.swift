//
//  ContentView.swift
//  WeSplit
//
//  Created by Julian on 23/03/2025.
//

import SwiftUI

struct ContentView: View {
    @State private var name = ""
    
    var body: some View {
        Form {
            TextField("Enter your name", text: $name)
            Text("Hello, \(name)!")
        }
    }
}

#Preview {
    ContentView()
}
