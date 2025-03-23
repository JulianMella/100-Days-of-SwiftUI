//
//  ContentView.swift
//  WeSplit
//
//  Created by Julian on 23/03/2025.
//

import SwiftUI

struct ContentView: View {
    
    let studentNames = ["Alice", "Bob", "Charlie", "David", "Emma", "Frank", "Grace", "Henry", "Isabella", "Jack", "Kate", "Liam", "Mia", "Noah", "Olivia", "Peter", "Quinn", "Ruby", "Thomas", "Uma", "Violet", "William", "Xavier", "Yara", "Zoe"]
    
    @State private var selectedStudent = "Alice"
    
    var body: some View {
        NavigationStack {
            Form {
                Picker("Select your student", selection: $selectedStudent) {
                    ForEach(studentNames, id: \.self) {
                        Text($0)
                    }
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
