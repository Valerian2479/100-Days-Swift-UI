//
//  ContentView.swift
//  RpSBrainGame
//
//  Created by June Paul Santillan on 9/18/23.
//

import SwiftUI

struct ContentView: View {
    
    @State private var showingScore = false
    @State private var showingSummary = false
    @State private var score = 0
    @State private var scoreTitle = ""
    @State private var gameQuestions = 0
    @State private var playerMove = ""
    
    @State private var gameMoves = ["Rock", "Paper", "Scissors"]
    @State private var winOrLose = ["Win", "Lose"]
    @State private var correctMove = Int.random(in: 0...2)
    @State private var winOrLoseMove = Int.random(in: 0...1)
    
    var moveChoice: String {
        
        gameMoves[correctMove]
    }
    
    var condition: String {
        
        winOrLose[winOrLoseMove]
    }
    
    var currentScores: Bool {
        
       
     result(moveChoice, condition, playerMove)
        
        
    }
    
    var computeScore: Int {
        
        var scored = 0
        
        if currentScores == true {
            scored += 1
        }
        
        return scored
     }
    
    var body: some View {
        
        NavigationStack {
            
            VStack{
                Spacer()
                
                HStack {
                    Text("Move :")
                        .font(.largeTitle)
                    Text(gameMoves[correctMove])
                        .font(.largeTitle.weight(.semibold))
                    
                }
                
                HStack {
                    Text("Condition:")
                        .font(.largeTitle)
                    Text(winOrLose[winOrLoseMove])
                        .font(.largeTitle.weight(.semibold))
                    
                    
                }
                
                Spacer ()
                VStack {
                    Text("Your move?")
                        .foregroundStyle(.red)
                        .font(.system(size: 25))
                    
                    
                }
                HStack {
                    ForEach(0..<3) { number in
                        Button {
                            buttonTapped(number)
                        } label: {
                            Text(gameMoves[number])
                                .foregroundColor(.green)
                                .padding(.all)
                        }
                    }
                }
                
                //                Section {
                //                    Picker("Select Conversion", selection: $playerMove){
                //                        ForEach(gameMoves, id: \.self) {
                //                            Text($0)
                //                        }
                //                    }
                //                    .pickerStyle(.segmented)
                //                } header: {
                //                    Text("Choose your move wisely")
                //                }
                
                HStack {
                    
                    Text("Score is:")
                        .foregroundColor(.black)
                    //                        .font(.title.italic())
                        .font(.system(size: 50))
                    Text(computeScore, format: .number)
                        .font(.system(size: 100))
                }
                
                
                
                Spacer()
                Spacer()
                Spacer()
            }
            .navigationTitle("Brainy Game")
            .alert(scoreTitle, isPresented: $showingScore) {
                Button("Continue", action: askQuestion)
            } message: {
                Text(computeScore, format: .number)
            }
            .alert(scoreTitle, isPresented: $showingSummary) {
                Button("check", action: askQuestion)
            } message: {
                Text(computeScore, format: .number)
            }
            
        }
        
        
    }
    
    func result (_ moveChoice: String, _ condition: String, _ playerMove: String) -> Bool {
        
        
        if moveChoice == "Rock" && condition == "Win" {
            if playerMove == "Paper" {
                
                return true
                
                
            } else if playerMove == "Rock" {
                
                return false
            } else {
                
                return false
                
            }
            
        } else if moveChoice == "Rock" && condition == "Lose" {
            if playerMove == "Scissors" {
                
                return true
            } else if playerMove == "Rock" {
                
                return false
            } else {
                return false
            }
        } else if moveChoice == "Paper" && condition == "Win" {
            if playerMove == "Scissors" {
                return true
            } else if playerMove == "Paper" {
                return false
            } else {
                return false
            }
        } else if moveChoice == "Paper" && condition == "Lose" {
            if playerMove == "Rock" {
                return true
            } else if playerMove == "Paper" {
                return false
            } else {
                return false
            }
        } else if moveChoice == "Scissors" && condition == "Win" {
            if playerMove == "Rock" {
                return true
            } else if playerMove == "Scissors" {
                return false
            } else {
                return false
            }
        } else if moveChoice == "Scissors" && condition == "Lose" {
            if playerMove == "Paper" {
                return true
            } else if playerMove == "Scissors" {
                return false
            } else {
                return false
            }
            
        }
        
        
        
        return true
    }
    
    
    func buttonTapped (_ number: Int) {
        if number == 0 {
            playerMove = "Rock"
        } else if number == 1 {
            playerMove = "Paper"
        } else if number == 2 {
            playerMove = "Scissors"
        }
        
        gameQuestions += 1
        showingScore = true
        
        if gameQuestions == 10 {
            showingSummary = true
            
            
        }
       
    }
    
    func askQuestion() {
        
        correctMove = Int.random(in: 0..<3)
        winOrLoseMove = Int.random(in: 0..<2)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
