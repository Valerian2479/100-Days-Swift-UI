//
//  ContentView.swift
//  SobreSwiftUI
//
//  Created by June Paul Santillan on 9/20/23.
//

import SwiftUI


struct LoginBackground: View {
    
    var image: String
    
    var body: some View {
        Image(image)
            .renderingMode(.original)
            .resizable().edgesIgnoringSafeArea(.all)
        
        
    }
}






struct ContentView: View {
    
    @State private var username = ""
    @State private var password = ""
    @FocusState private var textFieldisFocused: Bool
    
    var body: some View {
        ZStack {
            LoginBackground(image: "login_bg2-1")
            
            //            Image("login_bg2-1")
            //                .renderingMode(.original)
            //                .resizable().edgesIgnoringSafeArea(.all)
            
            
            
            VStack {
                
                Spacer()
                
                VStack(spacing: 15) {
                    
                    Image("1024")
                        .renderingMode(.original)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        
                    
                    
                }
                
                
                Form {
                    Section {
                        TextField("username", text: $username)
                            .focused($textFieldisFocused)
                    }
                    Section {
                        TextField("password", text: $password)
                            .focused($textFieldisFocused)
                    }
                }
                .frame(height: 200)
                .padding(.bottom, 100)
                .padding()
                .toolbar {
                    ToolbarItemGroup(placement: .keyboard){
                        Spacer()

                        Button("Done") {
                            textFieldisFocused = false
                        }
                    }
                }
                
                Button {

                } label: {
                    Text("Check")
                }
                Button {

                } label: {
                    Text("Check")
                }
                
                
            }
            .padding(.vertical, 30)
            
            
            
        }
        .ignoresSafeArea(.keyboard)
        
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
