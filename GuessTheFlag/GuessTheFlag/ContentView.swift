//
//  ContentView.swift
//  GuessTheFlag
//
//  Created by Julian on 24/03/2025.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            ForEach(0..<3) { outer in
                HStack {
                    ForEach(0..<3) { inner in
                        Text("\(outer * 3 + inner)")
                    }
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
