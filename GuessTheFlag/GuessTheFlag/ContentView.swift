//
//  ContentView.swift
//  GuessTheFlag
//
//  Created by June Paul Santillan on 9/6/23.
//

import SwiftUI

struct Flag: View {
    
    var image: String
    
    var body: some View {
        
    Image(image)
        .renderingMode(.original)
        .clipShape(Capsule())
        .overlay(Capsule().stroke(Color.black, lineWidth: 2))
        .shadow(color: .black, radius: 2)
    }
}

struct Title: ViewModifier {
    
    func body(content: Content) -> some View {
        content
            .font(.largeTitle.bold())
            .foregroundColor(.blue)
    }
}

extension View {
    
    func prominentTitle() -> some View {
        modifier(Title())
    }
}

struct ContentView: View {
    @State private var showingScore = false
    @State private var scoreTitle = ""
    @State private var score = 0
    @State private var gameQuestions = 0
    @State private var showingSummary = false
    

    @State private var countries = ["Estonia", "France", "Germany", "Ireland", "Italy", "Nigeria", "Poland", "Russia", "Spain", "UK", "US"].shuffled()
    @State private var correctAnswer = Int.random(in: 0...2)

    var body: some View {
        ZStack {
            RadialGradient(stops: [
                .init(color: Color(red: 0.1, green: 0.2, blue: 0.45), location: 0.3),
                .init(color: Color(red: 0.76, green: 0.15, blue: 0.26), location: 0.3)
            ], center: .top, startRadius: 200, endRadius: 700)
                .ignoresSafeArea()

            VStack {
                Spacer()

                Text("Guess the Flag")
//                    .font(.largeTitle.bold())
//                    .foregroundColor(.white)
                    .prominentTitle()
                

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
//                            Image(countries[number])
//                                .renderingMode(.original)
//                                .clipShape(Capsule())
//                                .shadow(radius: 5)
                            Flag(image: self.countries[number])
                        }
                        
                    }
                   
                }
                .frame(maxWidth: .infinity)
                .padding(.vertical, 20)
                .background(.regularMaterial)
                .clipShape(RoundedRectangle(cornerRadius: 20))

                Spacer()
                Spacer()
                
                HStack {
                    Text("Your score is:")
                        .foregroundColor(.white)
                        .font(.title.bold())
                    Text(score, format: .number)
                        .foregroundColor(.white)
                        .font(.title.bold())
                }
            
                Spacer()
            }
            .padding()
        }
        .alert(scoreTitle, isPresented: $showingScore) {
            Button("Continue", action: askQuestion)
        } message: {
            Text(score, format: .number)
        }
        
        .alert(scoreTitle, isPresented: $showingSummary) {
            Button("Restart", action: summary)
        } message: {
            Text("Total score is \(score)")
        }
    }

    func flagTapped(_ number: Int) {
        
        if number == correctAnswer {
            
            scoreTitle = "Correct"
            score += 1
            
        } else {
            scoreTitle = "Wrong! That’s the flag of \(countries[number])"
        }

        showingScore = true
        gameQuestions += 1
        
        if gameQuestions == 2 {
            
            showingSummary = true
            showingScore = false
    
        }
        
        
    }

    func askQuestion() {
            
        countries.shuffle()
        correctAnswer = Int.random(in: 0...2)

        
    }
    
    func summary() {
        
        askQuestion()
        score = 0
        gameQuestions = 0
    }
    
    
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
