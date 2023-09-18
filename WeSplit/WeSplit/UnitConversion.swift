////
////  UnitConversion.swift
////  WeSplit
////
////  Created by June Paul Santillan on 9/6/23.
////
// 


import SwiftUI

struct ContentView: View {
    @State private var input = 0.0
    @State private var convertFrom = "Kelvin"
    @State private var convertTo = "Celsius"
    @FocusState private var numberIsFocused: Bool
    
    let conversionSelection = ["Celsius", "Fahrenheit", "Kelvin"]
    
    func convert(from convertFrom: String, to convertTo: String) -> Double {
        
        var convertValue = 0.0
        
        if convertFrom == "Kelvin" && convertTo == "Fahrenheit" {
            
            
            convertValue = 9/5 * (input - 273.15) + 32
            
            
        } else if convertFrom == "Kelvin" && convertTo == "Celsius" {
            
            
            convertValue = input - 273.15
            
            
        } else if convertFrom == "Celsius" && convertTo == "Fahrenheit" {
            
            
            
            convertValue = 9/5 * (input) + 32
            
        } else if convertFrom == "Celsius" && convertTo == "Kelvin" {
            
            
            convertValue = input + 273.15
            
        } else if convertFrom == "Fahrenheit" && convertTo == "Celsius" {
            
            convertValue = (input - 32) / 1.80
            
        } else if convertFrom == "Fahrenheit" && convertTo == "Kelvin" {
            
            convertValue = 5/9 * (input - 32) + 273.15
            
        } else {
            print("Something went wrong")
        }
        return convertValue
        
    }
    
    var converted: Double {
        
        return convert(from: convertFrom, to: convertTo)
        
        
    }
    
    var body: some View {
        
        NavigationView {
            Form {
                Section {
                    TextField("Enter number to be converted", value: $input, format: .number)
                        .keyboardType(.decimalPad)
                        .focused($numberIsFocused)
                    
                }
                Section {
                    Picker("Select Conversion", selection: $convertFrom){
                        ForEach(conversionSelection, id: \.self){
                            Text($0)
                        }
                        
                    }
                    .pickerStyle(.segmented)
                } header: {
                    Text("Select input unit")
                }
                
                
                Section {
                    Picker("Select Conversion", selection: $convertTo){
                        ForEach(conversionSelection, id: \.self){
                            Text($0)
                        }
                        
                    }
                    .pickerStyle(.segmented)
                } header: {
                    Text("Select output unit")
                }
                
                Section {
                    Text(converted, format: .number)
                }
                
            }
            .navigationTitle("Conversion")
            .toolbar {
                ToolbarItemGroup(placement: .keyboard){
                    Spacer()
                    
                    Button("Done") {
                        numberIsFocused = false
                    }
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

