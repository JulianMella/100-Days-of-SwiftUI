//
//  ContentView.swift
//  GuessTheFlag
//
//  Created by Julian on 24/03/2025.
//

import SwiftUI

struct ContentView: View {
    @State private var countries = ["Estonia", "France", "Germany", "Ireland", "Italy", "Nigeria", "Poland", "Spain", "UK", "US", "Ukraine"].shuffled()
    
    @State private var correctAnswer = Int.random(in: 0...2)
    @State private var showingScore = false
    @State private var scoreTitle = ""
    @State private var score: Int = 0
    @State private var selectedNumber: Int = 0
    @State private var showingGameOver = false
    @State private var numberOfRounds: Int = 0

    let finalRoundTitle = "Game Over"
    
    var body: some View {
        ZStack {
            //LinearGradient(colors: [.blue, .black], startPoint: .bottom, endPoint: .top)
            RadialGradient(stops: [
                .init(color: Color(red: 0.1, green: 0.2, blue: 0.45), location: 0.3),
                .init(color: Color(red: 0.76, green: 0.15, blue: 0.26), location: 0.3),
            ], center: .top, startRadius: 200, endRadius: 400)
            .ignoresSafeArea()
            VStack {
                Text("Guess the Flag")
                    .font(.largeTitle.weight(.bold))
                    .foregroundStyle(.white)
                Spacer()
                VStack(spacing: 15) {
                    VStack {
                        Text("Tap the flag of")
                            .foregroundStyle(.secondary)
                        .font(.subheadline.weight(.heavy))
                        Text(countries[correctAnswer])
                            .font(.largeTitle.weight(.semibold))
                    }
                    
                    ForEach(0..<3) { number in
                        Button {
                            flagTapped(number)
                        } label: {
                            Image(countries[number])
                                .clipShape(.capsule)
                                .shadow(radius: 5)
                        }
                    }
                }
                .frame(maxWidth: .infinity)
                .padding(.vertical, 20)
                .background(.regularMaterial)
                .clipShape(.rect(cornerRadius: 20))
                Spacer()
                Spacer()
                Text("Score: \(score)")
                    .foregroundStyle(.white)
                    .font(.title.bold())
                Spacer()
            }
            .padding()
        }
        .alert(scoreTitle, isPresented: $showingScore) {
            Button("Continue", action: askQuestion)
        } message: {
            if (scoreTitle == "Wrong") {
                Text("Wrong! That's the flag of \(countries[selectedNumber])")
            } else {
                Text("Your score is \(score)")
            }
        }
        .alert(finalRoundTitle, isPresented: $showingGameOver) {
            Button("Restart Game", action: restart)
        } message: {
            if (scoreTitle == "Wrong") {
                Text("Wrong! That's the flag of \(countries[selectedNumber])")
            }
            Text("Final score: \(score) / \(numberOfRounds) ")
        }
    }
    
    func flagTapped(_ number: Int) {
        numberOfRounds += 1
        if number == correctAnswer {
            scoreTitle = "Correct"
            score += 1
        } else {
            scoreTitle = "Wrong"
        }
        
        if (numberOfRounds == 8) {
            showingGameOver = true
        } else {
            showingScore = true
            selectedNumber = number
        }
    }
    
    func askQuestion() {
        
        let slice = countries[0...2]
        print("Old: \(slice)")
        
    
        while true {
            
            countries.shuffle()
            let newSlice = countries[0...2]
            
            print("New: \(newSlice)")
            
            var contains = false
            
            for country in slice {
                if newSlice.contains(country) {
                    print("New slice contains \(country) - reshuffling")
                    contains = true
                }
            }
            
            if !contains {
                break
            }
        }
        
        correctAnswer = Int.random(in: 0...2)
    }
    
    func restart() {
        score = 0
        selectedNumber = 0
        numberOfRounds = 0
        askQuestion()
    }
}

#Preview {
    ContentView()
}
