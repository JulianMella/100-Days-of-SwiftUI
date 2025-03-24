//
//  ContentView.swift
//  GuessTheFlag
//
//  Created by Julian on 24/03/2025.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 20) {
            Spacer()
            Text("Hello, world!")
            Text("This is inside a vstack")
            Spacer()
            Spacer()
        }
        .padding(EdgeInsets(top: 0, leading: 0, bottom: 20, trailing: 0))
        .border(Color.blue)
        HStack(spacing: 20) {
            Text("Hello, world!")
            Text("This is inside a hstack")
        }
        .border(Color.red)
        ZStack(alignment: .top) {
            Text("Hello, world!")
            Text("This is inside a zstack")
        }
    }
}

#Preview {
    ContentView()
}
