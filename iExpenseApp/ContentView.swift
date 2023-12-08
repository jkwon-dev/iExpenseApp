//
//  ContentView.swift
//  iExpenseApp
//
//  Created by kwon eunji on 12/8/23.
//

import SwiftUI
import Observation

@Observable
class User {
    var firstName = "Billbo"
    var lastName = "Baggins"
}

struct ContentView: View {
     @State private var user = User()
    
    var body: some View {
        VStack {
            Text("Hello, \(user.firstName) \(user.lastName)" )
            TextField("First name: ", text: $user.firstName)
            TextField("Last name", text: $user.lastName)
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
