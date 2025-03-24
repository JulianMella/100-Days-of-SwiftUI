//
//  ContentView.swift
//  GuessTheFlag
//
//  Created by Julian on 24/03/2025.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        /*Button("Delete selection") {
            print("Now deleting...")
        }*/
        /*Button("Delete selection", role: .destructive, action: executeDelete)*/
        /*VStack {
            Button("Button 1"){ }.buttonStyle(.bordered)
            Button("Button 2", role: .destructive) { }.buttonStyle(.bordered)
            Button("Button 3") { }.buttonStyle(.borderedProminent)
                .tint(.mint)
            Button("Button 4", role: .destructive) { }.buttonStyle(.borderedProminent)
        }*/
        /*Button("Edit", systemImage: "pencil") {
            print ("Editing...")
        }*/
        /*Button {
            print("Edit button was tapped")
        } label: {
            Label("Edit", systemImage: "pencil")
                .padding()
                .foregroundStyle(.white)
                .background(.red)
        }*/
    }
    
    func executeDelete() {
        print("Now deleting...")
    }
}

#Preview {
    ContentView()
}
