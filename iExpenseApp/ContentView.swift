//
//  ContentView.swift
//  iExpenseApp
//
//  Created by kwon eunji on 12/8/23.
//

import SwiftUI

struct User {
    var firstName = "Billbo"
    var lastName = "Baggins"
}

struct ContentView: View {
    @State private var user = User()
    
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
