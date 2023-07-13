//
//  ContentView.swift
//  InteractiveUI
//
//  Created by scholar on 7/13/23.
//

import SwiftUI

struct ContentView: View {
    
    @State private var firstName = ""
    @State private var lastName = ""
    @State private var textTitle = "What is your name?"
    
    var body: some View {
        
        // practicing GitHub
        // CLAIRE IS HERE
        
        VStack {
            
            Text(textTitle)
                .font(.title)
            
            TextField("Type first name here..", text: $firstName)
                .multilineTextAlignment(.center)
                .font(.title)
                .border(Color.gray, width: 1)
            
            TextField("Type last name here..", text: $lastName)
                .multilineTextAlignment(.center)
                .font(.title)
                .border(Color.gray, width: 1)
            
            Button("Submit Name") {
                textTitle = "Welcome, \(firstName) \(lastName)!"
            }
            .font(.title2)
            .buttonStyle(.borderedProminent)
            .tint(.purple)
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
