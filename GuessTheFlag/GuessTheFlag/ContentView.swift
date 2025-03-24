//
//  ContentView.swift
//  GuessTheFlag
//
//  Created by Julian on 24/03/2025.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        
        /*ZStack {
            Color.red
            
            Color(red: 1, green: 0.8, blue: 0)
                //.frame(width: 200, height: 200)
                .frame(minWidth: 200, maxWidth: .infinity, maxHeight: 200)
            Text("Your content")
        }*/
        //.ignoresSafeArea()
        ZStack {
            VStack(spacing: 0) {
                Color.red
                Color.blue
            }
            
            Text("Your content")
                .foregroundStyle(.secondary)
                .padding(50)
                .background(.ultraThinMaterial)
        }
    }
}

#Preview {
    ContentView()
}
